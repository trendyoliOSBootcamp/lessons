//
//  MovieCell.swift
//  MovieApp
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

protocol MovieCell: UICollectionViewCell {
    static var reuseIdentifier: String { get }
    func configure(movie:Movie?)
}
