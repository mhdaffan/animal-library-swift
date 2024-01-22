//
//  AnimalCharacteristicsModel.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 19/01/24.
//

struct AnimalCharacteristicsModel: Equatable {
    var habitat: String?
    var lifespan: String?
    var weight: String?
    var height: String?
    var length: String?
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
