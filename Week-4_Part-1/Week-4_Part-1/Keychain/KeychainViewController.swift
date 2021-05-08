//
//  KeychainViewController.swift
//  Week-4_Part-1
//
//  Created by Kerim Caglar on 8.05.2021.
//

import UIKit
import KeychainAccess

//SwiftKeychainWrapper
//https://github.com/kishikawakatsumi/KeychainAccess

//Shared data beetween apps read about it

class KeychainViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var dataText: UITextField!
    
    let keychain = Keychain(service: "com.kerimcaglar.Week-4-Part-1")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dataLabel.text = keychain["labelValue"]
        
    }
    @IBAction func save(_ sender: Any) {
        keychain["labelValue"] = dataText.text
        dataLabel.text = dataText.text
        
    }
    
    @IBAction func clear(_ sender: Any) {
        keychain["labelValue"] = nil
    }
    
}
