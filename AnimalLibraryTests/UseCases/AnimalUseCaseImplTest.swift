//
//  AnimalUseCaseImplTest.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 19/01/24.
//

@testable import AnimalLibrary
import XCTest

final class AnimalUseCaseImplTest: XCTestCase {
    
    private var mockRepo = AnimalRespositoryMockImpl()
    
    func test_fetchAnimalList_withSuccessMultipleResponses_expectResultSortedAscending() {
        let sut = makeSUT()
        mockRepo.searchResult = .success(AnimalResponse.stub200())
        
        sut.fetchAnimalList(animals: ["Lion", "Elephant"]) { result in
            let response = try? result.get()
            XCTAssertNotNil(response)
            XCTAssertEqual(response!.count, 2)
            XCTAssertEqual(response!.first!.name, "Elephant")
        }
    }
    
    func test_fetchAnimalList_withTwoKeyword_thatOnlyOneExist_expectSingleResponse() {
        let sut = makeSUT()
        mockRepo.searchResult = .success(AnimalResponse.stub200())
        
        sut.fetchAnimalList(animals: ["Lion", "this keyword should return empty"]) { result in
            let response = try? result.get()
            XCTAssertNotNil(response)
            XCTAssertEqual(response!.count, 1)
            XCTAssertEqual(response!.first!.name, "Lion")
        }
    }
    
    func test_fetchAnimalList_withNoConnectionError_expectResultEmptyResponse() {
        let sut = makeSUT()
        mockRepo.searchResult = .failure(APIError.noConnection)
        
        sut.fetchAnimalList(animals: ["Lion", "Elephant"]) { result in
            let response = try? result.get()
            XCTAssertNotNil(response)
            XCTAssertTrue(response!.isEmpty)
        }
    }
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> AnimalUseCaseImpl {
        var sut = AnimalUseCaseImpl()
        sut.repo = mockRepo
        
        return sut
    }
    
}
