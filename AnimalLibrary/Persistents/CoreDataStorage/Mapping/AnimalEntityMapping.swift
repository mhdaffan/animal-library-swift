//
//  AnimalEntityMapping.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 18/01/24.
//

import CoreData

extension AnimalEntity {
    
    func toAnimalModel() -> AnimalModel {
        var photos: [AnimalPhoto] = []
        (self.animalPhotos as? Set<AnimalPhotoEntity>)?.forEach {
            photos.append($0.toAnimalPhoto())
        }
        let characteristics = self.characteristics?.toAnimalCharacteristicsModel() ?? AnimalCharacteristicsModel.defaultValue()
        return AnimalModel(
            name: self.name ?? "",
            type: self.type ?? "", 
            locations: self.locations as? [String] ?? [],
            photos: photos,
            characteristics: characteristics)
    }
    
}

extension AnimalModel {
    
    @discardableResult
    func toEntity(context: NSManagedObjectContext) -> AnimalEntity {
        let entity = AnimalEntity(context: context)
        entity.name = self.name
        entity.type = self.type
        entity.locations = self.locations as NSObject
        entity.characteristics = self.characteristics.toEntity(context: context)
        self.photos.forEach {
            let photoEntity = $0.toEntity(context: context)
            entity.addToAnimalPhotos(photoEntity)
        }
        
        return entity
    }
    
}
