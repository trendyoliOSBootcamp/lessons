//
//  Movie.swift
//  MovieApp
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

struct Movie: Decodable,Hashable {
    
    let id : Int
    let tagline: String
    let title: String
    let description: String?
    let headerImage: String
    let thumbnail: String
  
}
