//
//  FontConstants.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit

extension UIFont {
    
    private static func getFont(name: String, size: Double) -> UIFont {
        if let font = UIFont(name: name, size: CGFloat(size)) {
            return font
        }
        return UIFont.systemFont(ofSize: CGFloat(size))
    }
    
    static func poppinsBold(_ size: CGFloat) -> UIFont {
        getFont(name: "Poppins-Bold", size: size)
    }
    
    static func poppinsSemiBold(_ size: CGFloat) -> UIFont {
        getFont(name: "Poppins-SemiBold", size: size)
    }
    
    static func poppinsMedium(_ size: CGFloat) -> UIFont {
        getFont(name: "Poppins-Medium", size: size)
    }
    
    static func poppinsRegular(_ size: CGFloat) -> UIFont {
        getFont(name: "Poppins-Regular", size: size)
    }
    
}
