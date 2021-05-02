//
//  UserDetafultsViewController.swift
//  Week-3_Part-2
//
//  Created by Kerim Çağlar on 2.05.2021.
//

import UIKit

class UserDefaultsViewController: UIViewController {
    @IBOutlet weak var itemLbl: UILabel!
    @IBOutlet weak var itemTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.itemLbl.text = UserDefaults.standard.value(forKey: "name") as? String
    }
    

    @IBAction func save(_ sender: Any) {
        let name = itemTextField.text
        UserDefaults.standard.set(name, forKey: "name")
        itemTextField.text = ""
        self.itemLbl.text = name
    }
    
}
