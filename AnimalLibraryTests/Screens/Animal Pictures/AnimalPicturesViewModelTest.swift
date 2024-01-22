//
//  AnimalPicturesViewModelTest.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 21/01/24.
//

@testable import AnimalLibrary
import XCTest

final class AnimalPicturesViewModelTest: XCTestCase {
    
    private var mockRepo = PhotoRepositoryMockImpl()
    private var mockAnimalStorage = AnimalEntityStorageMockImpl()
    
    func test_fetchPhotos_withSuccessResponse_expectAnimalsUpdated() {
        let stubbedResponse = PhotoListResponse.stub200()
        assertFetchPhotosResponse(
            stubbedResult: .success(stubbedResponse),
            expResponse: stubbedResponse.toAnimalPhotoList())
    }
    
    func test_fetchPhotos_withErrorResponse_expectAnimalsEmpty() {
        assertFetchPhotosResponse(
            stubbedResult: .failure(APIError.noData),
            expResponse: nil)
    }
    
    func test_fetchNextPagePhotos_withSuccessResponse_expectAnimalsUpdated() {
        let stubbedResponse = PhotoListResponse.stubNextPage200()
        assertFetchNextPagePhotosResponse(
            stubbedResult: .success(stubbedResponse),
            expResponseCount: stubbedResponse.photos.count)
    }
    
    func test_fetchNextPagePhotos_withErrorResponse_expectAnimalsEmpty() {
        assertFetchNextPagePhotosResponse(
            stubbedResult: .failure(APIError.noData),
            expResponseCount: 0)
    }
    
    func test_saveAnimalPhotoToLocal() {
        let stubbedAnimalPhotoList = PhotoListResponse.stub200().toAnimalPhotoList()
        let stubbedAnimalPhoto = AnimalPhoto.stub(favorited: false)
        let sut = makeSUT()
        sut.photo = stubbedAnimalPhotoList
        
        sut.saveAnimalPhotoToLocal(animalPhoto: stubbedAnimalPhoto)
        
        XCTAssertTrue(sut.photo!.photos.first(where: { $0.id == stubbedAnimalPhoto.id})!.isFavorited)
    }
    
    func test_removeAnimalPhotoFromLocal() {
        let stubbedAnimalPhotoList = PhotoListResponse.stub200().toAnimalPhotoList()
        let stubbedAnimalPhoto = AnimalPhoto.stub(favorited: false)
        let sut = makeSUT()
        sut.photo = stubbedAnimalPhotoList
        
        sut.saveAnimalPhotoToLocal(animalPhoto: stubbedAnimalPhoto)
        let favoritedAnimalPhoto = sut.photo!.photos.first(where: { $0.id == stubbedAnimalPhoto.id})!
        XCTAssertTrue(favoritedAnimalPhoto.isFavorited)
        
        sut.removeAnimalPhotoFromLocal(animalPhoto: favoritedAnimalPhoto)
        XCTAssertFalse(sut.photo!.photos.first(where: { $0.id == stubbedAnimalPhoto.id})!.isFavorited)
        
    }
    
    // MARK: - Helpers
    
    func assertFetchPhotosResponse(
        stubbedResult: Result<PhotoListResponse, Error>,
        expResponse: AnimalPhotoList?,
        file: StaticString = #file,
        line: UInt = #line)
    {
        let sut = makeSUT()
        mockRepo.searchResult = stubbedResult
        let exp = expectation(description: "waiting for response")
        
        sut.onStateChanged = { state in
            if state.isLoaded() || state.isFailed() {
                exp.fulfill()
            }
        }
        
        sut.fetchPhotos()
        
        waitForExpectations(timeout: 0.5) { _ in
            XCTAssertEqual(sut.photo, expResponse)
        }
    }
    
    func assertFetchNextPagePhotosResponse(
        stubbedResult: Result<PhotoListResponse, Error>,
        expResponseCount: Int,
        file: StaticString = #file,
        line: UInt = #line)
    {
        let sut = makeSUT()
        sut.photo = PhotoListResponse.stub200().toAnimalPhotoList()
        mockRepo.nextPageSearchResult = stubbedResult
        let exp = expectation(description: "waiting for response")
        
        sut.onStateChanged = { state in
            if state.isLoaded() || state.isFailed() {
                exp.fulfill()
            }
        }
        
        sut.fetchNextPagePhotos(nextPageUrl: "https://api.pexels.com/v1/search/?page=1&per_page=15&query=Cape+Lion")
        
        waitForExpectations(timeout: 0.5) { _ in
            XCTAssertEqual(sut.photo?.photos.count, PhotoListResponse.stub200().toAnimalPhotoList().photos.count + expResponseCount)
        }
    }
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> AnimalPicturesViewModel {
        InjectedValue[\.photoRepository] = mockRepo
        InjectedValue[\.animalStorage] = mockAnimalStorage
        var sut = AnimalPicturesViewModel(animal: AnimalModel.stub())
        trackForMemoryLeaks(sut)
        
        return sut
    }
    
}
