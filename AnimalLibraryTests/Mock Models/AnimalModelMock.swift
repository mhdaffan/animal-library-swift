//
//  AnimalModelMock.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 20/01/24.
//

@testable import AnimalLibrary

extension AnimalModel {
    
    static func stub(photos: [AnimalPhoto] = []) -> AnimalModel {
         return AnimalModel(
            name: "Cape Lion",
            type: "Lion",
            locations: [
                "Africa",
                "Asia"
            ],
            photos: photos,
            characteristics: AnimalCharacteristicsModel(
                habitat: "open woodland, scrub, grassland",
                lifespan: "8 - 15 years",
                weight: "120kg - 249kg (264lbs - 550lbs)",
                height: nil,
                length: "1.4m - 2.5m (4.7ft - 8.2ft)"))
    }
    
    static func stubArray() -> [AnimalModel] {
        return [
            AnimalModel.stub(photos: [AnimalPhoto.stub(favorited: true)])
        ]
    }
    
}
