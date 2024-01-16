//
//  ExtensionData.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import Foundation

extension Data {
    
    func toObject<T: Decodable>(_ object: T.Type) -> T? {
        return try? JSONDecoder().decode(object, from: self)
    }
    
}
