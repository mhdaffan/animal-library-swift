//
//  AnimalEntityStorage.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 17/01/24.
//

import CoreData

protocol AnimalEntityStorage {
    func fetchAnimalEntity(completion: @escaping ([AnimalEntity]) -> Void)
    func saveAnimalEntity(animal: AnimalModel)
}

class AnimalEntityStorageImpl: AnimalEntityStorage {
    
    @Injected(\.coreDataStorage) var storage
    
    func fetchAnimalEntity(completion: @escaping ([AnimalEntity]) -> Void) {
        storage.performBackgroundTask { context in
            let request = AnimalEntity.fetchRequest()
            do {
                let response = try context.fetch(request)
                completion(response)
            } catch {
                print(error.localizedDescription)
                completion([])
            }
        }
    }
    
    func saveAnimalEntity(animal: AnimalModel) {
        storage.performBackgroundTask { context in
            do {
                let animalEntities = try context.fetch(AnimalEntity.fetchRequest())
                
                if let index = animalEntities.firstIndex(where: { $0.name == animal.name }) {
                    animal.photos.forEach {
                        animalEntities[index].animalPhotos.insert(AnimalPhotoEntity(photo: $0, insertInto: context))
                    }
                } else {
                    let animalEntity = AnimalEntity(context: context)
                    animalEntity.name = animal.name
                    animal.photos.forEach {
                        animalEntity.animalPhotos.insert(AnimalPhotoEntity(photo: $0, insertInto: context))
                    }
                }
                
                try context.save()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
}
