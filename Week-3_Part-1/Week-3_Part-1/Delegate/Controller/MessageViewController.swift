//
//  MessageViewController.swift
//  Week-3_Part-1
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

protocol MessageDelegate:class {
    func sendMessage(updateLabel text:String)
}

class MessageViewController: UIViewController {

    @IBOutlet weak var messageTextField: UITextField!
    weak var delegate: MessageDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendMessage(_ sender: Any) {
        guard let text = messageTextField.text else { return }
        delegate?.sendMessage(updateLabel: text)
        dismiss(animated: true, completion: nil)
    }
    
}
