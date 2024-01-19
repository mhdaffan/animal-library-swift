//
//  AnimalCharacteristicsEntityMapping.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 19/01/24.
//

import CoreData

extension AnimalCharacteristicsEntity {
    
    func toAnimalCharacteristicsModel() -> AnimalCharacteristicsModel {
        return AnimalCharacteristicsModel(
            habitat: self.habitat,
            lifespan: self.lifespan,
            weight: self.weight,
            height: self.height,
            length: self.length)
    }
    
}

extension AnimalCharacteristicsModel {
    
    func toEntity(context: NSManagedObjectContext) -> AnimalCharacteristicsEntity {
        let entity = AnimalCharacteristicsEntity(context: context)
        entity.habitat = self.habitat
        entity.lifespan = self.lifespan
        entity.weight = self.weight
        entity.height = self.height
        entity.length = self.length
        
        return entity
    }
}
