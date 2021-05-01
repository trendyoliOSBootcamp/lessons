//
//  MovieCell.swift
//  MovieApp
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

protocol MovieCell: UICollectionViewCell {
    func showMovie(movie:Movie?)
}
