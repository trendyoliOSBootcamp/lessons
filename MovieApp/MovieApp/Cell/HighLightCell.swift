//
//  HighLightCell.swift
//  MovieApp
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

class HighLightCell: UICollectionViewCell, MovieCell {
  
    static let reuseIdentifier = String(describing: HighLightCell.self)
    @IBOutlet weak var highlightImage: UIImageView!
    
    func showMovie(movie: Movie?) {
        highlightImage.image = movie?.headerImage
    }
}
