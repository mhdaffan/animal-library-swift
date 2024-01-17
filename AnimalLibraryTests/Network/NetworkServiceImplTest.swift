//
//  NetworkServiceImplTest.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 17/01/24.
//

@testable import AnimalLibrary
import XCTest

final class NetworkServiceImplTest: XCTestCase {
    
    var mockSession = NetworkSessionMockImpl()
    var animalEndpointMock = AnimalEndpoint.search(name: "test")
    
    func test_request_expectReturnValidData() {
        let responseData = AnimalResponse.mock200()
        mockSession.data = responseData
        let sut = makeSUT()
        
        sut.request(endpoint: animalEndpointMock, completion: { result in
            let data = try! result.get().0
            XCTAssertEqual(data, responseData)
        })
    }
    
    func test_request_expectErrorNoConnected() {
        mockSession.error = APIError.noConnection
        let sut = makeSUT()
        
        sut.request(endpoint: animalEndpointMock, completion: { result in
            let error = result.getError()
            XCTAssertEqual(error?.localizedDescription, APIError.noConnection.localizedDescription)
        })
    }
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> NetworkServiceImpl {
        let sut = NetworkServiceImpl()
        sut.session = mockSession
        trackForMemoryLeaks(sut)
        
        return sut
    }
    
}
