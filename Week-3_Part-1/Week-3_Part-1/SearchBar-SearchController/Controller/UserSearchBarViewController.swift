//
//  UserSearchBarViewController.swift
//  Week-3_Part-1
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

class UserSearchBarViewController: UIViewController {

    var users = [User]()
    var filteredUsers = [User]()
    var isFiltering: Bool = false
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let userURLString = "https://jsonplaceholder.typicode.com/users"
        guard let userURL = URL(string: userURLString) else { return }
        let users = try? JSONDecoder().decode([User].self, from: Data(contentsOf: userURL))
        self.users = users!
        //let cooks = try? JSONDecoder().decode([Cook].self, from: Data(contentsOf: userURL))
        //tableView.delegate = self
        tableView.dataSource = self
        
    }

}

extension UserSearchBarViewController: UITableViewDataSource {
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
    
    //MARK:  cell için custom bir cell tanımlayınız. Veri bulunamadığında ÖZEL bir mesaj gösteriniz.
    
}

extension UserSearchBarViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredUsers = users.filter({ (user:User) -> Bool in
            return user.name.lowercased().contains(searchText.lowercased())
        })
        
        isFiltering = true
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        isFiltering = false
        searchBar.text = ""
        tableView.reloadData()
    }
    
}
