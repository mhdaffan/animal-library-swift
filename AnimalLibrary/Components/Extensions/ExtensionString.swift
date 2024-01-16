//
//  ExtensionString.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import Foundation

extension String {
    
    func toJsonData() -> Data {
        return Data(self.utf8)
    }
    
}

extension Optional where Wrapped == String {
    
    var orEmpty: String {
        return self ?? ""
    }
    
}
