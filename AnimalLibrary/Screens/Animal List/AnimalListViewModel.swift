//
//  AnimalListViewModel.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import Foundation

final class AnimalListViewModel: ViewModel {
    
    private let animalList: [String] = ["Elephant", "Lion", "Fox", "Dog", "Shark", "Turtle", "Whale", "Penguin"]
    var animals: [AnimalGroup] = []
    
    // MARK: - Injected Properties
    
    @Injected(\.animalUseCase) var animalUseCase
    
    // MARK: - Network Calls
    
    func fetchAnimalList() {
        self.onStateChanged?(.loading)
        animalUseCase.fetchAnimalList(animals: animalList) { [weak self] result in
            switch result {
            case .success(let response):
                self?.animals = response
                self?.onStateChanged?(.loaded)
            case .failure(let error):
                self?.onStateChanged?(.failed(error))
            }
        }
    }
    
}
