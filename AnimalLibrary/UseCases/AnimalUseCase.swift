//
//  AnimalUseCase.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

protocol AnimalUseCase {
    func search(name: String, completion: @escaping ((Result<[AnimalResponse], Error>) -> Void))
}

struct AnimalUseCaseImpl: AnimalUseCase {
    
    @Injected(\.animalRepository) var repo: AnimalRepository
    
    func search(name: String, completion: @escaping ((Result<[AnimalResponse], Error>) -> Void)) {
        return repo.search(name: name, completion: completion)
    }
    
}
