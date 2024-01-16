//
//  PhotoRepository.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

protocol PhotoRepository {
    func search(query: String, completion: @escaping ((Result<PhotoListResponse, Error>) -> Void))
}

struct PhotoRepositoryImpl: PhotoRepository {
    
    @Injected(\.dataTransferService) var service: DataTransferService
    
    func search(query: String, completion: @escaping ((Result<PhotoListResponse, Error>) -> Void)) {
        return service.request(
            with: PhotoEndpoint.search(query: query),
            decodable: PhotoListResponse.self,
            completion: completion)
    }
    
}
