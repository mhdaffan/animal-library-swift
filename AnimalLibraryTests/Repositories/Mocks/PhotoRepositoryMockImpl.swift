//
//  PhotoRepositoryMockImpl.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 20/01/24.
//

@testable import AnimalLibrary

final class PhotoRepositoryMockImpl: PhotoRepository {
    
    var searchResult: Result<PhotoListResponse, Error> = .failure(APIError.noData)
    var nextPageSearchResult: Result<PhotoListResponse, Error> = .failure(APIError.noData)
    
    func search(query: String, completion: @escaping ((Result<PhotoListResponse, Error>) -> Void)) {
        completion(searchResult)
    }
    
    func nextPageSearch(nextPage: String, completion: @escaping ((Result<PhotoListResponse, Error>) -> Void)) {
        completion(nextPageSearchResult)
    }
    
}
