//
//  AnimalModel.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 17/01/24.
//

struct AnimalModel: Equatable {
    var name: String
    var type: String
    var locations: [String]
    var photos: [AnimalPhoto]
    var characteristics: AnimalCharacteristicsModel
    
    var size: String {
        let sizes: [String?] = [characteristics.weight, characteristics.height, characteristics.length]
        return sizes.compactMap { $0 }.joined(separator: ", ")
    }
}

extension Array where Element == AnimalModel {
    
    func toFavoritesAnimalCategories() -> [String] {
        var categories = ["All"]
        categories.append(contentsOf: self.map { $0.type })
        
        return categories
    }
    
}
