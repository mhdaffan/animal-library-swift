//
//  AnimalListViewModelTest.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 19/01/24.
//

@testable import AnimalLibrary
import XCTest

final class AnimalListViewModelTest: XCTestCase {
    
    private var mockRepo = AnimalRespositoryMockImpl()
    
    func test_fetchAnimalList_withSuccessResponse_expectAnimalsUpdated() {
        assertFetchAnimalResponse(
            expResult: .success(AnimalResponse.stub200()),
            expResponseCount: 2
        )
    }
    
    func test_fetchAnimalList_withErrorResponse_expectAnimalsEmpty() {
        assertFetchAnimalResponse(
            expResult: .failure(APIError.noData),
            expResponseCount: 0
        )
    }
    
    // MARK: - Helpers
    
    func assertFetchAnimalResponse(
        expResult: Result<[AnimalResponse], Error>,
        expResponseCount: Int,
        file: StaticString = #file,
        line: UInt = #line)
    {
        let sut = makeSUT()
        mockRepo.searchResult = expResult
        let exp = expectation(description: "waiting for response")
        
        sut.onStateChanged = { state in
            if state.isLoaded() {
                exp.fulfill()
            }
        }
        
        sut.fetchAnimalList()
        
        waitForExpectations(timeout: 0.5) { _ in
            XCTAssertEqual(sut.animals.count, expResponseCount)
        }
    }
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> AnimalListViewModel {
        InjectedValue[\.animalRepository] = mockRepo
        var sut = AnimalListViewModel()
        trackForMemoryLeaks(sut)
        
        return sut
    }
}
