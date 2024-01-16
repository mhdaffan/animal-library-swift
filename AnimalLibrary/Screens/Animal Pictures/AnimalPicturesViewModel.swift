//
//  AnimalPicturesViewModel.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

final class AnimalPicturesViewModel: ViewModel {
    
    var animal: AnimalResponse
    
    init(animal: AnimalResponse) {
        self.animal = animal
    }
    
}
