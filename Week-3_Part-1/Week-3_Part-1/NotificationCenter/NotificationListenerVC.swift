//
//  NotificationListenerVC.swift
//  Week-3_Part-1
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

class NotificationListenerVC: UIViewController {

    @IBOutlet weak var listenerImage: UIImageView!
    
    @IBOutlet weak var notificationDataLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let notificationCenter: NotificationCenter = NotificationCenter.default
        
        notificationCenter.addObserver(self, selector: #selector(handleData(notification:)), name: .sendDataNotification, object: nil)
        
    }
    
    @objc func changeImage() {
        self.listenerImage.image = UIImage(systemName: "folder.fill")
    }
    
    @objc func handleData(notification:Notification) {
        
        if let name = notification.userInfo?["name"] as? String {
            notificationDataLbl.text = name
        }
    }

}
