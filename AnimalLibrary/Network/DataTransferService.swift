//
//  DataTransferService.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import Foundation

protocol DataTransferService {
    func request<T: Decodable>(with endpoint: Requestable, decodable: T.Type, completion: @escaping ((Result<T, Error>) -> Void))
}

class DataTransferServiceImpl: DataTransferService {
    
    @Injected(\.networkService) var networkService: NetworkService
    
    func request<T: Decodable>(with endpoint: Requestable, decodable: T.Type, completion: @escaping ((Result<T, Error>) -> Void)) {
        self.networkService.request(endpoint: endpoint) { result in
            switch result {
            case let .success((data, response)):
                let statusCode = response?.statusCode ?? -1
                guard let data = data else {
                    completion(.failure(APIError.noData))
                    return
                }
                
                do {
                    let result = try JSONDecoder().decode(decodable.self, from: data)
                    completion(.success(result))
                } catch {
                    completion(.failure(APIError.parseError))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
}
