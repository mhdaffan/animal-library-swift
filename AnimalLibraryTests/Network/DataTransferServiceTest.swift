//
//  DataTransferServiceTest.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 17/01/24.
//

@testable import AnimalLibrary
import XCTest

final class DataTransferServiceTest: XCTestCase {
    
    var session = NetworkSessionMockImpl()
    var mockRegisterEndpoint = AnimalEndpoint.search(name: "Lion")
    
    override func setUp() {
        super.setUp()
        session = NetworkSessionMockImpl()
    }
    
    func test_request_withSuccessResponse_expectMappingToArrayOfAnimalResponse() {
        session.data = AnimalResponse.mock200()
        let sut = makeSUT()
        
        sut.request(with: mockRegisterEndpoint, decodable: [AnimalResponse].self, completion: { result in
            let data = try! result.get()
            XCTAssertEqual(data, AnimalResponse.stub200())
        })
    }
    
    func test_request_withNoResponse_expectNoDataError() {
        session.data = nil
        let sut = makeSUT()
        
        sut.request(with: mockRegisterEndpoint, decodable: [AnimalResponse].self, completion: { result in
            let error = result.getError()
            XCTAssertNotNil(error)
            XCTAssertEqual(error?.localizedDescription, APIError.noData.localizedDescription)
        })
    }
    
    func test_request_withInvalidResponse_expectParsingJSONError() {
        session.data = Data("Internal Server Error".utf8)
        let sut = makeSUT()
        
        sut.request(with: mockRegisterEndpoint, decodable: [AnimalResponse].self, completion: { result in
            let error = result.getError()
            XCTAssertNotNil(error)
            XCTAssertEqual(error?.localizedDescription, APIError.parseError.localizedDescription)
        })
    }
    
    func test_request_withNoInternet_expectNetworkFailureError() {
        session.error = APIError.noConnection
        let sut = makeSUT()
        
        sut.request(with: mockRegisterEndpoint, decodable: [AnimalResponse].self, completion: { result in
            let error = result.getError()
            XCTAssertNotNil(error)
            XCTAssertEqual(error?.localizedDescription, APIError.noConnection.localizedDescription)
        })
    }
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> DataTransferServiceImpl {
        InjectedValue[\.networkSession] = session
        let sut = DataTransferServiceImpl()
        trackForMemoryLeaks(sut)
        
        return sut
    }
    
}
