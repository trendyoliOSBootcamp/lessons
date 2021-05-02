//
//  HighLightCell.swift
//  MovieApp
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

class HighLightCell: UICollectionViewCell, MovieCell {
  
    static let reuseIdentifier = "HighLightCell"
    @IBOutlet weak var highlightImage: UIImageView!
    
    func configure(movie: Movie?) {
        highlightImage.image = UIImage(named: movie?.headerImage ?? "")
    }
}
