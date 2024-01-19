//
//  PhotoUseCase.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

protocol PhotoUseCase {
    func search(query: String, completion: @escaping ((Result<AnimalPhotoList, Error>) -> Void))
}

struct PhotoUseCaseImpl: PhotoUseCase {
    
    @Injected(\.photoRepository) var repo
    @Injected(\.animalStorage) var animalStorage
    
    func search(query: String, completion: @escaping ((Result<AnimalPhotoList, Error>) -> Void)) {
        return repo.search(query: query, completion: { result in
            switch result {
            case .success(let response):
                combineAnimalPhotoListWithLocalData(
                    name: query,
                    animalPhotoList: response.toAnimalPhotoList(),
                    completion: { animalPhotoList in
                        completion(.success(animalPhotoList))
                    })
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
    
    func combineAnimalPhotoListWithLocalData(name: String, animalPhotoList: AnimalPhotoList, completion: @escaping(AnimalPhotoList) -> Void) {
        var _animalPhotoList = animalPhotoList
        animalStorage.fetchAnimalEntity { animals in
            _animalPhotoList.photos = animalPhotoList.photos.map { animalPhoto -> AnimalPhoto in
                var _animalPhoto = animalPhoto
                let isFavorited = animals.first(where: { $0.name == name })?.photos.first(where: { $0.id == animalPhoto.id })?.isFavorited
                _animalPhoto.isFavorited = isFavorited ?? false
                
                return _animalPhoto
            }
            completion(_animalPhotoList)
        }
    }
    
}
