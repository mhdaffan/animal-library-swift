//
//  FavoritesAnimalViewModel.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 18/01/24.
//

import Foundation

final class FavoritesAnimalViewModel: ViewModel {
    
    @Injected(\.animalStorage) var animalStorage
    
    var animals: [AnimalModel] = []
    var filteredAnimals: [AnimalModel] = []
    
    // MARK: - Animal Storage
    
    func fetchAnimals() {
        onStateChanged?(.loading)
        animalStorage.fetchAnimalEntity { [weak self] animals in
            self?.animals = animals
            self?.onStateChanged?(.loaded)
        }
    }
    
    func removeAnimalPhotoFromLocal(animalPhoto: AnimalPhoto) {
        onStateChanged?(.loading)
        animalStorage.deleteAnimalPhotoEntity(animalPhoto: animalPhoto) { [weak self] success in
            DispatchQueue.main.async { [weak self] in
                self?.fetchAnimals()
            }
        }
    }
    
}
