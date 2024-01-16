//
//  AnimalPicturesViewModel.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

final class AnimalPicturesViewModel: ViewModel {
    
    var animal: AnimalResponse
    var photo: PhotoListResponse = PhotoListResponse.stub200()
    
    init(animal: AnimalResponse) {
        self.animal = animal
    }
    
}
