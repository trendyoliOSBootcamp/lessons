//
//  CookListViewController.swift
//  Week-4_Part-1
//
//  Created by Kerim Caglar on 8.05.2021.
//

import UIKit
import CoreData
import MySPM

class CookListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var cookNames = [String]()
    
    //MARK: Resim datasını gösteren bir view ekleyiniz
    //MARK: Silme işlemini yapınız: Direk silme işlemi yapılmasın, bir alert ile kullanıcıya silmek istediğinize emin misin diye sorulsun. Core Data dan veriyi siliniz
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        MySPM.sayHello()
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getCooks()
    }
    
    private func getCooks() {
        cookNames.removeAll()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let context = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Cook")
        
        do {
            let results = try context.fetch(fetchRequest)
            if results.count > 0 {
                for result in results as! [NSManagedObject] {
                    guard let name = result.value(forKey: "name") as? String else { return }
                    cookNames.append(name)
                }
                self.tableView.reloadData()
            } else {
                //TODO:
            }
        } catch {
            print("Error")
        }
    }
    

}

extension CookListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cookNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cookCell", for: indexPath)
        cell.textLabel?.text = cookNames[indexPath.row]
        return cell
    }
    
}
