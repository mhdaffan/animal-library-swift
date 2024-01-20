//
//  PhotoUseCaseImplTest.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 20/01/24.
//

@testable import AnimalLibrary
import XCTest

final class PhotoUseCaseImplTest: XCTestCase {
    
    private var mockRepo = PhotoRepositoryMockImpl()
    private var mockAnimalStorage = AnimalEntityStorageMockImpl()
    
    func test_fetchPhotoList_withSuccessResponseAndEmptyLocalData_expectRealResponse() {
        let stubbedResponse = PhotoListResponse.stub200()
        let sut = makeSUT()
        mockRepo.searchResult = .success(stubbedResponse)
        
        sut.search(query: "Cape Lion") { result in
            let response = try? result.get()
            XCTAssertNotNil(response)
            XCTAssertEqual(response!.photos.count, stubbedResponse.photos.count)
            XCTAssertEqual(response!, stubbedResponse.toAnimalPhotoList())
        }
    }
    
    func test_fetchPhotoList_withSuccessResponseAndLocalDataExistAndMatch_expectResponseCombineWithLocalData() {
        let stubbedResponse = PhotoListResponse.stub200()
        let sut = makeSUT()
        mockRepo.searchResult = .success(stubbedResponse)
        mockAnimalStorage.animals = AnimalModel.stubArray() // stubbed single photo with id 3264
        
        sut.search(query: "Cape Lion") { result in
            let response = try? result.get()
            XCTAssertNotNil(response)
            XCTAssertEqual(response!.photos.count, stubbedResponse.photos.count)
            XCTAssertNotEqual(response!, stubbedResponse.toAnimalPhotoList())
            XCTAssertEqual(response!.photos.first(where: { $0.id == 18039316 })?.isFavorited, true)
        }
    }
    
    func test_fetchAnimalList_withNoConnection_expectNoConnectionError() {
        let sut = makeSUT()
        mockRepo.searchResult = .failure(APIError.noConnection)
        
        sut.search(query: "Cape Lion") { result in
            let error = result.getError()
            XCTAssertNotNil(error)
            XCTAssertEqual(error?.localizedDescription, APIError.noConnection.localizedDescription)
        }
    }
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> PhotoUseCaseImpl {
        var sut = PhotoUseCaseImpl()
        sut.repo = mockRepo
        sut.animalStorage = mockAnimalStorage
        
        return sut
    }
    
}
