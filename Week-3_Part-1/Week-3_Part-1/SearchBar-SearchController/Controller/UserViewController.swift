//
//  UserViewController.swift
//  Week-3_Part-1
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let searchController = UISearchController(searchResultsController: nil)
    
    var users = [User]()
    var filteredUsers = [User]()
    
    var isSearchBarEmpty: Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    var isFiltering: Bool {
        return searchController.isActive && !isSearchBarEmpty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Search"
        
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
        let userURLString = "https://jsonplaceholder.typicode.com/users"
        guard let userURL = URL(string: userURLString) else { return }
        let users = try? JSONDecoder().decode([User].self, from: Data(contentsOf: userURL))
        self.users = users!
        
        configureSearchController()
    }
    
    private func configureSearchController() {
        
        searchController.searchResultsUpdater = self
        
        searchController.searchBar.placeholder = "Search User"
        
        searchController.obscuresBackgroundDuringPresentation = false
        
        navigationItem.searchController = searchController
        
        definesPresentationContext = true
    }
    
    func filterContextForSearchText(searchText: String) {
        filteredUsers = users.filter({ (user:User) -> Bool in
            return user.name.lowercased().contains(searchText.lowercased())
        })
        
        tableView.reloadData()
    }

}

extension UserViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering {
            return filteredUsers.count
        }
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell")
        let user:User
        if isFiltering {
            user = filteredUsers[indexPath.row]
        } else {
            user = users[indexPath.row]
        }
        cell?.textLabel?.text = user.name
        cell?.detailTextLabel?.text = user.company.name
        
        return cell!
    }
    
}

extension UserViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        //TODO
        let searchBar = searchController.searchBar
        filterContextForSearchText(searchText:searchBar.text! )
    }
    
    
}

//MARK:  https://stackoverflow.com/questions/56525604/difference-between-uisearchbar-and-uisearchbarcontroller#:~:text=UISearchBar%20is%20a%20view.,abstract%20behaviour%20of%20%22searching%22.
