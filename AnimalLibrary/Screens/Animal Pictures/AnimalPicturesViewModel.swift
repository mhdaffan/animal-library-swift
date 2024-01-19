//
//  AnimalPicturesViewModel.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

struct AnimalPhotoList {
    var photos: [AnimalPhoto]
}

final class AnimalPicturesViewModel: ViewModel {
    
    var animal: AnimalModel
    var photo: AnimalPhotoList?
    
    // MARK: - Injected Properties
    
    @Injected(\.photoUseCase) var photoUseCase
    @Injected(\.animalStorage) var animalStorage
    
    init(animal: AnimalModel) {
        self.animal = animal
    }
    
    // MARK: - Network Calls
    
    func fetchPhotos() {
        onStateChanged?(.loading)
        photoUseCase.search(query: animal.name) { [weak self] result in
            switch result {
            case .success(let response):
                self?.photo = response
                self?.onStateChanged?(.loaded)
            case .failure(let error):
                self?.onStateChanged?(.failed(error))
            }
        }
    }
    
    // MARK: - Animal Storage
    
    func saveAnimalPhotoToLocal(animalPhoto: AnimalPhoto) {
        let animalModel = AnimalModel(
            name: animal.name,
            type: animal.type, 
            locations: animal.locations,
            photos: [animalPhoto],
            characteristics: animal.characteristics)
        
        animalStorage.saveAnimalEntity(animal: animalModel, completion: { [weak self] success in
            if let index = self?.photo?.photos.firstIndex(where: { $0.id == animalPhoto.id }) {
                self?.photo?.photos[index].isFavorited = true
            }
        })
    }
    
    func removeAnimalPhotoFromLocal(animalPhoto: AnimalPhoto) {
        animalStorage.deleteAnimalPhotoEntity(animalPhoto: animalPhoto, completion: { [weak self] success in
            if let index = self?.photo?.photos.firstIndex(where: { $0.id == animalPhoto.id }) {
                self?.photo?.photos[index].isFavorited = false
            }
        })
    }
    
}
