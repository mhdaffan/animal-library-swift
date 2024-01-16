//
//  NetworkSession.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import Foundation

protocol NetworkSession {
    func loadData(
        from request: URLRequest,
        completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void)
}

final class NetworkSessionImpl: NetworkSession {
    
    func loadData(from request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            completionHandler(data, response, error)
        }
        task.resume()
    }
    
}
