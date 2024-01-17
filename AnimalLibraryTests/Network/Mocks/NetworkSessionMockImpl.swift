//
//  NetworkSessionMockImpl.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 17/01/24.
//

import XCTest
@testable import AnimalLibrary

final class NetworkSessionMockImpl: NetworkSession {
    
    var data: Data?
    var httpResponse: HTTPURLResponse?
    var error: Error?
    
    func loadData(from request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        completionHandler(data, httpResponse, error)
    }
    
}
