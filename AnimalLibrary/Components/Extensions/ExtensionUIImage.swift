//
//  ExtensionUIImage.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 20/01/24.
//

import UIKit

extension UIImage {
 
    func color(_ color: UIColor) -> UIImage {
        return self.withTintColor(color, renderingMode: .alwaysOriginal)
    }
    
}
