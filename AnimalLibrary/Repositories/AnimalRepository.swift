//
//  AnimalRepository.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

protocol AnimalRepository {
    func search(name: String, completion: @escaping ((Result<[AnimalResponse], Error>) -> Void))
}

struct AnimalRepositoryImpl: AnimalRepository {
    
    @Injected(\.dataTransferService) var service: DataTransferService
    
    func search(name: String, completion: @escaping ((Result<[AnimalResponse], Error>) -> Void)) {
        return service.request(
            with: AnimalEndpoint.search(name: name),
            decodable: [AnimalResponse].self,
            completion: completion)
    }
    
}
