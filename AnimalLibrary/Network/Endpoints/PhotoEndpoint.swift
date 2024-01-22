//
//  PhotoEndpoint.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

enum PhotoEndpoint {
    case search(query: String)
    case nextPageSearch(nextPage: String)
}

extension PhotoEndpoint: Requestable {
    
    var baseURL: String {
        switch self {
        case .nextPageSearch:
            ""
        default:
            "https://api.pexels.com"
        }
    }
    
    var path: String {
        switch self {
        case .search:
            return "/v1/search"
        case .nextPageSearch(let nextPage):
            return nextPage
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
        case .search(let query):
            return [
                "query": query
            ]
        default:
            return [:]
        }
    }
    
    var headerParamaters: [String : String] {
        switch self {
        default:
            return [
                HeaderKey.authorization: "F0RsC7L6viQO7bzFmZTKs7hwGWhXlwm5TjAozyXUwkTmB8INisxbwjVg"
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
