//
//  RecommendationCell.swift
//  MovieApp
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

class RecommendationCell: UICollectionViewCell, MovieCell {
    static let reuseIdentifier = String(describing: RecommendationCell.self)
    
    @IBOutlet weak var recommendationImage: UIImageView!
    
    func showMovie(movie: Movie?) {
        recommendationImage.image = movie?.thumbnail
    }
    
}
