//
//  PageViewController.swift
//  Week-3_Part-1
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

class PageViewController: UIViewController {

    var controllers = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let vc1 = UIViewController()
        vc1.view.backgroundColor = .red
        controllers.append(vc1)
        
        let vc2 = UIViewController()
        vc2.view.backgroundColor = .blue
        controllers.append(vc2)
        
        let vc3 = UIViewController()
        vc3.view.backgroundColor = .green
        controllers.append(vc3)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.pageVC()
    }

    func pageVC() {
        guard let first = controllers.first else { return }
        
        let vc = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        vc.dataSource = self
        vc.delegate = self
        vc.setViewControllers([first], direction: .forward, animated: true, completion: nil)
        present(vc, animated: true, completion: nil)
    }
    
}

extension PageViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = controllers.firstIndex(of: viewController), index > 0 else { return nil}
        
        let prev = index - 1
        return controllers[prev]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let index = controllers.firstIndex(of: viewController), index < (controllers.count - 1) else { return nil}
        
        let next = index + 1
        return controllers[next]
    }
    
    
}

//MARK: UIViewController yaşam döngüsünü araştırıp her bir methodu kendi cümlelerinizle özetleyiniz
//MARK: PageControll kullanarak active sayfayı belirleyiniz(8 Mayıs)
