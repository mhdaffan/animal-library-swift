//
//  AnimalUseCase.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import Foundation

protocol AnimalUseCase {
    func fetchAnimalList(animals: [String], completion: @escaping ((Result<[AnimalGroup], Error>) -> Void))
}

struct AnimalUseCaseImpl: AnimalUseCase {
    
    @Injected(\.animalRepository) var repo: AnimalRepository
    
    func fetchAnimalList(animals: [String], completion: @escaping ((Result<[AnimalGroup], Error>) -> Void)) {
        var animalGroup: [AnimalGroup] = []
        
        let group = DispatchGroup()
        animals.forEach { animal in
            group.enter()
            repo.search(name: animal) { result in
                switch result {
                case .success(let response):
                    if !response.isEmpty {
                        animalGroup.append(.init(name: animal, kinds: response.map { $0.toAnimalModel(type: animal) }))
                    }
                case .failure:
                    break
                }
                group.leave()
            }
        }
        
        group.notify(queue: .main) {
            completion(.success(animalGroup.sorted(by: { $0.name < $1.name})))
        }
    }
    
}
