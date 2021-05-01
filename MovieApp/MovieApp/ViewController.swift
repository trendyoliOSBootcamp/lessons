//
//  ViewController.swift
//  MovieApp
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit


typealias MoviesDataSource = UICollectionViewDiffableDataSource<MovieManager.Section, Movie>

class ViewController: UIViewController {

    private var dataSource: MoviesDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupNavigationBarImage()
    }

    private func setupNavigationBarImage() {
        let logo = UIImage(named: "netflix")
        let imageView = UIImageView(image: logo)
        imageView.contentMode = .scaleAspectFit
        
        self.navigationItem.titleView = imageView
    }

}

