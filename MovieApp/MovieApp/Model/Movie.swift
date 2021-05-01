//
//  Movie.swift
//  MovieApp
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

struct Movie: Hashable {
    let title: String
    let headerImage: UIImage?
    let thumbnail: UIImage?
    let description: String?
    let id = UUID().uuidString
    
    
    init(title:String, headerImage: UIImage? = nil, thumbnail: UIImage? = nil, description: String? = nil) {
        self.title = title
        self.headerImage = headerImage
        self.thumbnail = thumbnail
        self.description = description
    }
    
}
