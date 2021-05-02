//
//  RecommendationCell.swift
//  MovieApp
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

class RecommendationCell: UICollectionViewCell, MovieCell {
    static let reuseIdentifier = "RecommendationCell"
    
    @IBOutlet weak var recommendationImage: UIImageView!
    
    func configure(movie: Movie?) {
        recommendationImage.image = UIImage(named: movie?.thumbnail ?? "")
    }
    
}
