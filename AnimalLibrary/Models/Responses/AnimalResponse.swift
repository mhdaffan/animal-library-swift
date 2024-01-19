//
//  AnimalResponse.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

struct AnimalResponse: Codable, Equatable {
    let name: String
    let locations: [String]
    let characteristics: AnimalCharacteristicsResponse
    
    enum CodingKeys: String, CodingKey {
        case name, locations, characteristics
    }
    
    var size: String {
        let sizes: [String?] = [characteristics.weight, characteristics.height, characteristics.length]
        return sizes.compactMap { $0 }.joined(separator: ", ")
    }
}

extension AnimalResponse {
    
    func toAnimalModel(type: String) -> AnimalModel {
        return AnimalModel(
            name: self.name,
            type: type,
            locations: self.locations,
            photos: [],
            characteristics: self.characteristics.toAnimalCharacteristicsModel())
    }
}
