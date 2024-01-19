//
//  AnimalRespositoryMockImpl.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 19/01/24.
//

@testable import AnimalLibrary

final class AnimalRespositoryMockImpl: AnimalRepository {
    
    var searchResult: (Result<[AnimalResponse], Error>) = .failure(APIError.noData)
    
    func search(name: String, completion: @escaping ((Result<[AnimalResponse], Error>) -> Void)) {
        switch searchResult {
        case .success(let stubbedResponse):
            completion(.success(stubbedResponse.filter { $0.name.contains(name) } ))
        case .failure(let error):
            completion(.failure(error))
        }
    }
    
}
