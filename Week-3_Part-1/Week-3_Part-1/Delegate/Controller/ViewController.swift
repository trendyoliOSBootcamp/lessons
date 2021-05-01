//
//  ViewController.swift
//  Week-3_Part-1
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func getDataBtn(_ sender: Any) {
        
        let messageDetail = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "MessageViewController") as! MessageViewController
        
        messageDetail.delegate = self
        
        present(messageDetail, animated: true, completion: nil)
    }
    
}

extension ViewController: MessageDelegate {
    
    func sendMessage(updateLabel text: String) {
        self.messageLbl.text = text
    }

}
