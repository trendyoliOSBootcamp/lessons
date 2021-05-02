//
//  BundleDecodable.swift
//  MovieApp
//
//  Created by Kerim Çağlar on 2.05.2021.
//

import Foundation


extension Bundle {
    
    func decode<T: Decodable>(type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("\(file) not exist in project")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("\(file) failed load")
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file)")
        }
        
        return loadedData
    }
}
