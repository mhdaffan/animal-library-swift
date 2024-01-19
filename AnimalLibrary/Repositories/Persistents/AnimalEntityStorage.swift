//
//  AnimalEntityStorage.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 17/01/24.
//

import CoreData

protocol AnimalEntityStorage {
    func fetchAnimalEntity(completion: @escaping ([AnimalModel]) -> Void)
    func saveAnimalEntity(animal: AnimalModel, completion: @escaping (Bool) -> Void)
    func deleteAnimalPhotoEntity(animalPhoto: AnimalPhoto, completion: @escaping (Bool) -> Void)
}

class AnimalEntityStorageImpl: AnimalEntityStorage {
    
    @Injected(\.coreDataStorage) var storage
    
    func fetchAnimalEntity(completion: @escaping ([AnimalModel]) -> Void) {
        storage.performBackgroundTask { context in
            let request = AnimalEntity.fetchRequest()
            DispatchQueue.main.async {
                do {
                    let response = try context.fetch(request)
                    let _response = response.map { entity -> AnimalModel in
                        return entity.toAnimalModel()
                    }
                    completion(_response)
                } catch {
                    print(error.localizedDescription)
                    completion([])
                }
            }
        }
    }
    
    func saveAnimalEntity(animal: AnimalModel, completion: @escaping (Bool) -> Void) {
        storage.performBackgroundTask { context in
            do {
                let animalEntities = try context.fetch(AnimalEntity.fetchRequest())
                if let index = animalEntities.firstIndex(where: { $0.name == animal.name }) {
                    let animalEntity = animalEntities[index]
                    animal.photos.forEach {
                        let photoEntity = $0.toEntity(context: context)
                        animalEntity.addToAnimalPhotos(photoEntity)
                    }
                } else {
                    animal.toEntity(context: context)
                }
                try context.save()
                completion(true)
            } catch {
                print(error.localizedDescription)
                completion(false)
            }
        }
    }
    
    func deleteAnimalPhotoEntity(animalPhoto: AnimalPhoto, completion: @escaping (Bool) -> Void) {
        storage.performBackgroundTask { context in
            do {
                let animalPhotoEntities = try context.fetch(AnimalPhotoEntity.fetchRequest())
                guard let animalPhotoIndex = animalPhotoEntities.firstIndex(where: { $0.id == Int64(animalPhoto.id) }),
                      let animalName = animalPhotoEntities[animalPhotoIndex].animal?.name else {
                    completion(false)
                    return
                }
                
                let animalEntities = try context.fetch(AnimalEntity.fetchRequest())
                guard let animalIndex = animalEntities.firstIndex(where: { $0.name == animalName }) else {
                    completion(false)
                    return
                }
                
                animalEntities[animalIndex].removeFromAnimalPhotos(animalPhotoEntities[animalPhotoIndex])
                context.delete(animalPhotoEntities[animalPhotoIndex])
                
                if let animalPhotos = animalEntities[animalIndex].animalPhotos, animalPhotos.count == 0 {
                    context.delete(animalEntities[animalIndex])
                }
                
                try context.save()
                completion(true)
            } catch {
                print(error.localizedDescription)
                completion(false)
            }
        }
    }
    
}
