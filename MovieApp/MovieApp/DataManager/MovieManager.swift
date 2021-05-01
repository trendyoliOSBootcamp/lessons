//
//  MovieManager.swift
//  MovieApp
//
//  Created by Kerim Caglar on 1.05.2021.
//

import Foundation

struct MovieManager {
    
    enum Section: String {
        case HIGHLIGHTS = "Highlights"
        case PREVIEW = "Preview"
        case POPULAR = "Popular"
        case ANIME = "Anime"
        case CLASSIC = "Classic"
        case DOCUMENTARIES = "Documenteries"
        case DRAMA = "Drama"
        case MUSICAL = "Musical"
    }
    
    static var movies = [
    
        Section.HIGHLIGHTS : [
        
            Movie(title: "Station 19", headerImage: #imageLiteral(resourceName: "IMG_1203 2"), description: "Watch this movie"),
            Movie(title: "Knock Down", headerImage: #imageLiteral(resourceName: "IMG_1201") , description: "I love it"),
            Movie(title: "Harry Potter", headerImage:#imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets") , description: "Harry Potter")
        ],
        
        
        Section.PREVIEW : [
        
            Movie(title: "Ant Man", headerImage: #imageLiteral(resourceName: "antmanposter-139745"), description: "Watch this movie"),
            Movie(title: "Knock Down", headerImage: #imageLiteral(resourceName: "IMG_1201") , description: "I love it"),
            Movie(title: "Harry Potter", headerImage:#imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets") , description: "Harry Potter"),
            Movie(title: "Station 19", headerImage: #imageLiteral(resourceName: "IMG_1203 2"), description: "Watch this movie"),
            Movie(title: "Knock Down", headerImage: #imageLiteral(resourceName: "IMG_1201") , description: "I love it"),
            Movie(title: "Harry Potter", headerImage:#imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets") , description: "Harry Potter")
        ],
        
        Section.POPULAR : [
            Movie(title: "Station 19", headerImage: #imageLiteral(resourceName: "IMG_1203 2"), description: "Watch this movie"),
            Movie(title: "Knock Down", headerImage: #imageLiteral(resourceName: "IMG_1201") , description: "I love it"),
            Movie(title: "Harry Potter", headerImage:#imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets") , description: "Harry Potter")
        
        ],
        
        Section.ANIME: [
            Movie(title: "Station 19", headerImage: #imageLiteral(resourceName: "IMG_1203 2"), description: "Watch this movie"),
            Movie(title: "Knock Down", headerImage: #imageLiteral(resourceName: "IMG_1201") , description: "I love it"),
            Movie(title: "Harry Potter", headerImage:#imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets") , description: "Harry Potter")
        ],
        
        Section.CLASSIC: [
            Movie(title: "Station 19", headerImage: #imageLiteral(resourceName: "IMG_1203 2"), description: "Watch this movie"),
            Movie(title: "Knock Down", headerImage: #imageLiteral(resourceName: "IMG_1201") , description: "I love it"),
            Movie(title: "Harry Potter", headerImage:#imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets") , description: "Harry Potter")
        ],
        
        Section.DOCUMENTARIES: [
            Movie(title: "Station 19", headerImage: #imageLiteral(resourceName: "IMG_1203 2"), description: "Watch this movie"),
            Movie(title: "Knock Down", headerImage: #imageLiteral(resourceName: "IMG_1201") , description: "I love it"),
            Movie(title: "Harry Potter", headerImage:#imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets") , description: "Harry Potter")
        
        ],
        
        Section.DRAMA: [
            Movie(title: "Station 19", headerImage: #imageLiteral(resourceName: "IMG_1203 2"), description: "Watch this movie"),
            Movie(title: "Knock Down", headerImage: #imageLiteral(resourceName: "IMG_1201") , description: "I love it"),
            Movie(title: "Harry Potter", headerImage:#imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets") , description: "Harry Potter")
        ],
        
        Section.MUSICAL: [
            Movie(title: "Station 19", headerImage: #imageLiteral(resourceName: "IMG_1203 2"), description: "Watch this movie"),
            Movie(title: "Knock Down", headerImage: #imageLiteral(resourceName: "IMG_1201") , description: "I love it"),
            Movie(title: "Harry Potter", headerImage:#imageLiteral(resourceName: "Harry-Potter-and-the-Chamber-of-Secrets") , description: "Harry Potter")
        ]
    
    ]
}
