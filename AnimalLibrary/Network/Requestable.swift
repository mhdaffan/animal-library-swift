//
//  Requestable.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import Foundation

struct HeaderKey {
    static let authorization = "Authorization"
    static let contentType = "Content-Type"
    static let xAPIKey = "X-Api-Key"
}

enum HTTPMethod: String {
    case get     = "GET"
    case post    = "POST"
    case put     = "PUT"
    case delete  = "DELETE"
}

protocol Requestable {
    var baseURL: String { get}
    var path: String { get }
    var method: HTTPMethod { get }
    var queryParameters: [String: Any] { get }
    var headerParamaters: [String: String] { get }
    var bodyParamaters: [String: Any] { get }
    func urlRequest() throws -> URLRequest
}

extension Requestable {
    
    func configureUrl() throws -> URL {
        guard var urlComponents = URLComponents(string: baseURL.appending(path)) else {
            throw APIError.badURL
        }
        
        var urlQueryItems = [URLQueryItem]()
        
        queryParameters.forEach {
            urlQueryItems.append(URLQueryItem(name: $0.key, value: "\($0.value)"))
        }
        urlComponents.queryItems = !urlQueryItems.isEmpty ? urlQueryItems : nil
        
        guard let url = urlComponents.url else {
            throw APIError.badURL
        }
        
        return url
    }
    
    func urlRequest() throws -> URLRequest {
        let url = try self.configureUrl()
        var urlRequest = URLRequest(url: url)
        
        if !bodyParamaters.isEmpty {
            urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: bodyParamaters, options: .prettyPrinted)
        }
        urlRequest.httpMethod = method.rawValue
        urlRequest.allHTTPHeaderFields = headerParamaters
        
        return urlRequest
    }
    
}
