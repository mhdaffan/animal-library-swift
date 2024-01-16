//
//  AnimalListViewModel.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import Foundation

final class AnimalListViewModel: ViewModel {
    
    var animals: [AnimalResponse] = []
    
    // MARK: - Network Calls
    
    func fetchAnimalList() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: { [weak self] in
            self?.animals = AnimalResponse.stub200()
            self?.onStateChanged?(.loaded)
        })
    }
    
}
