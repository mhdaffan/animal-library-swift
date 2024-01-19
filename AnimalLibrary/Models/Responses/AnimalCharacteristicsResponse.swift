//
//  AnimalCharacteristicsResponse.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 19/01/24.
//

struct AnimalCharacteristicsResponse: Codable, Equatable {
    let habitat: String?
    let lifespan: String?
    let weight: String?
    let height: String?
    let length: String?
    
    enum CodingKeys: String, CodingKey {
        case habitat, lifespan, weight, height, length
    }
}

extension AnimalCharacteristicsResponse {
    
    func toAnimalCharacteristicsModel() -> AnimalCharacteristicsModel {
        return AnimalCharacteristicsModel(
            habitat: self.habitat,
            lifespan: self.lifespan,
            weight: self.weight,
            height: self.height,
            length: self.length)
    }
    
}
