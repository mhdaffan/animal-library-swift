//
//  AnimalEndpoint.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

enum AnimalEndpoint {
    case search(name: String)
}

extension AnimalEndpoint: Requestable {
    
    var baseURL: String {
        "https://api.api-ninjas.com"
    }
    
    var path: String {
        switch self {
        case .search:
            return "/v1/animals"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        default:
            return .get
        }
    }
    
    var queryParameters: [String : Any] {
        switch self {
        case .search(let name):
            return [
                "name": name
            ]
        }
    }
    
    var headerParamaters: [String : String] {
        switch self {
        default:
            return [
                HeaderKey.xAPIKey: "pfFQJxLiPMYqvY5rZXbYdw==VBjYVanTRFZdEhx9"
            ]
        }
    }
    
    var bodyParamaters: [String : Any] {
        switch self {
        default:
            return [:]
        }
    }
    
}
