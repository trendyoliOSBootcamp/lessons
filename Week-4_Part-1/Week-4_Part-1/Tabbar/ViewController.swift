//
//  ViewController.swift
//  Week-4_Part-1
//
//  Created by Kerim Caglar on 8.05.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabbarConfig()
    }

    private func tabbarConfig() {
        guard let tabbar = tabBarController?.tabBar else { return }
        tabbar.barTintColor = .orange
        tabbar.tintColor = .white
        tabbar.unselectedItemTintColor = .black
        
        tabbar.layer.cornerRadius = 30
        tabbar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        tabbar.layer.masksToBounds = true // TODO: clipto ve maskto bound nedir? nasıl kullanılır
        //MARK: tabbar için orta buttonu biraz çıkıntılı ayarlayınız
        
        tabbar.layer.borderWidth = 2
        tabbar.layer.borderColor = UIColor.red.cgColor
        
    }

}

