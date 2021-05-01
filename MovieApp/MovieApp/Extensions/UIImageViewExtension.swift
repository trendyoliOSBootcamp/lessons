//
//  UIImageViewExtension.swift
//  MovieApp
//
//  Created by Kerim Caglar on 1.05.2021.
//

import UIKit

extension UIImageView {
    
    func makeRounded(borderColor: CGColor? = nil, borderWidth: CGFloat = 2) {
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor
        layer.cornerRadius = frame.height / 2 //???
        //???
    }
    
    func addGradient(startColor: CGColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor,
                     endColor: CGColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1.0).cgColor,
                     at position:UInt32 = 0) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds // MARK: Frame vs Bounds açıklayınız
        gradient.colors = [startColor, endColor]
        layer.insertSublayer(gradient, at: position)
        
    }
    
}
