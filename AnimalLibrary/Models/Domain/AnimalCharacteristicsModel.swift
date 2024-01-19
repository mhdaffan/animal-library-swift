//
//  AnimalCharacteristicsModel.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 19/01/24.
//

struct AnimalCharacteristicsModel {
    let habitat: String?
    let lifespan: String?
    let weight: String?
    let height: String?
    let length: String?
}

extension AnimalCharacteristicsModel {
    
    static func defaultValue() -> AnimalCharacteristicsModel {
        return AnimalCharacteristicsModel(
            habitat: "",
            lifespan: "",
            weight: "",
            height: "",
            length: "")
    }
}
