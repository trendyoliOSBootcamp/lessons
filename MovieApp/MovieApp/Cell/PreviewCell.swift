//
//  PreviewCell.swift
//  MovieApp
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

class PreviewCell: UICollectionViewCell, MovieCell {
    static let reuseIdentifier = String(describing: PreviewCell.self)
    @IBOutlet weak var previewImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    var isGradient = false
    
    func showMovie(movie: Movie?) {
        
        previewImage.makeRounded(borderColor: UIColor.gray.cgColor)
        
        if !isGradient {
            isGradient = true
            previewImage.addGradient()
        }
        
        previewImage.image = movie?.thumbnail
        title.text = movie?.title
    }
}
