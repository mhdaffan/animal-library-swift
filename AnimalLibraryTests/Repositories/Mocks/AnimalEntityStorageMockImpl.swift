//
//  AnimalEntityStorageMockImpl.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 20/01/24.
//

@testable import AnimalLibrary

final class AnimalEntityStorageMockImpl: AnimalEntityStorage {
    
    var animals: [AnimalModel] = []
    
    func fetchAnimalEntity(completion: @escaping ([AnimalModel]) -> Void) {
        completion(animals)
    }
    
    func saveAnimalEntity(animal: AnimalModel, completion: @escaping (Bool) -> Void) {
        if let animalIndex = animals.firstIndex(where: { $0.name == animal.name }) {
            animals[animalIndex].photos.append(contentsOf: animal.photos)
        } else {
            animals.append(animal)
        }
        completion(true)
    }
    
    func deleteAnimalPhotoEntity(animalPhoto: AnimalPhoto, completion: @escaping (Bool) -> Void) {
        guard let animalIndex = animals.firstIndex(where: { $0.photos.contains(where: { $0.id == animalPhoto.id }) }),
        let photoIndex = animals[animalIndex].photos.firstIndex(where: { $0.id == animalPhoto.id }) else {
            completion(false)
            return
        }
        animals[animalIndex].photos.remove(at: photoIndex)
        if animals[animalIndex].photos.isEmpty {
            animals.remove(at: animalIndex)
        }
        
        completion(true)
    }
    
}

