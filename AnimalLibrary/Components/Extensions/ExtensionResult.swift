//
//  ExtensionResult.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 17/01/24.
//

import Foundation

extension Result {
    
    func getError() -> Error? {
        switch self {
        case .success:
            return nil
        case .failure(let error):
            return error
        }
    }
    
}
