//
//  AnimalPicturesViewModel.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

final class AnimalPicturesViewModel: ViewModel {
    
    var animal: AnimalResponse
    var photo: PhotoListResponse?
    
    // MARK: - Injected Properties
    
    @Injected(\.photoUseCase) var photoUseCase
    
    init(animal: AnimalResponse) {
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
}
