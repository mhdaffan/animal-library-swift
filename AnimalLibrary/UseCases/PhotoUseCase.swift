//
//  PhotoUseCase.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

protocol PhotoUseCase {
    func search(query: String, completion: @escaping ((Result<PhotoListResponse, Error>) -> Void))
}

struct PhotoUseCaseImpl: PhotoUseCase {
    
    @Injected(\.photoRepository) var repo: PhotoRepository
    
    func search(query: String, completion: @escaping ((Result<PhotoListResponse, Error>) -> Void)) {
        return repo.search(query: query, completion: completion)
    }
    
}
