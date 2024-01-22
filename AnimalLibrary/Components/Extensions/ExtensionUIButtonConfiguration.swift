//
//  ExtensionUIButtonConfiguration.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 20/01/24.
//

import UIKit

extension UIButton.Configuration {
    
    static func mediumImaged(imagePlacement: NSDirectionalRectEdge) -> UIButton.Configuration {
        var configuration = UIButton.Configuration.plain()
        configuration.imagePlacement = imagePlacement
        configuration.buttonSize = .medium
        configuration.imagePadding = 8
        return configuration
    }
    
    static func titled(alignment: UIButton.Configuration.TitleAlignment, padding: CGFloat) -> UIButton.Configuration {
        var configuration = UIButton.Configuration.plain()
        configuration.titlePadding = padding
        configuration.titleAlignment = alignment
        
        return configuration
    }
}
