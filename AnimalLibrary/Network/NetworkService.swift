//
//  NetworkService.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import Foundation

protocol NetworkService {
    func request(endpoint: Requestable, completion: @escaping (Result<(Data?, HTTPURLResponse?), Error>) -> Void)
}

class NetworkServiceImpl: NetworkService {
    
    @Injected(\.networkSession) var session: NetworkSession
    
    func request(endpoint: Requestable, completion: @escaping (Result<(Data?, HTTPURLResponse?), Error>) -> Void) {
        do {
            let urlRequest = try endpoint.urlRequest()
            session.loadData(from: urlRequest) { (data, response, requestError) in
                DispatchQueue.main.async {
                    let response = (response as? HTTPURLResponse)
                    switch requestError?._code {
                    case NSURLErrorNotConnectedToInternet, -1020:
                        completion(.failure(APIError.noConnection))
                    default:
                        completion(.success((data, response)))
                    }
                }
            }
        } catch {
            DispatchQueue.main.async {
                completion(.failure(APIError.badURL))
            }
        }
    }
    
}
