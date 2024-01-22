//
//  FavoritesAnimalViewModelTest.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 22/01/24.
//

@testable import AnimalLibrary
import XCTest

final class FavoritesAnimalViewModelTest: XCTestCase {
    
    private var mockAnimalStorage = AnimalEntityStorageMockImpl()
    
    func test_fetchAnimalList_withSuccessResponse_expectAnimalsUpdated() {
        let stubbedAnimalPhotos = AnimalPhoto.stubArray(favorited: true)
        let stubbedAnimal = AnimalModel.stub(photos: stubbedAnimalPhotos)
        mockAnimalStorage.animals = [stubbedAnimal]
        let sut = makeSUT()
        
        sut.fetchAnimals()
        
        XCTAssertEqual(sut.animals.count, 1)
        XCTAssertEqual(sut.animals[0].photos.count, 2)
        XCTAssertEqual(sut.animals, [stubbedAnimal])
    }
    
    func test_removeAnimalPhotoFromLocal() {
        let stubbedAnimalPhotos = AnimalPhoto.stubArray(favorited: true)
        let stubbedAnimal = AnimalModel.stub(photos: stubbedAnimalPhotos)
        mockAnimalStorage.animals = [stubbedAnimal]
        let sut = makeSUT()
        sut.animals = [stubbedAnimal]
        let exp = expectation(description: "waiting for fetchAnimals from local loaded")
        
        sut.onStateChanged = { state in
            if state.isLoaded() {
                exp.fulfill()
            }
        }
        
        XCTAssertEqual(sut.animals.count, 1)
        XCTAssertEqual(sut.animals[0].photos.count, 2)
        XCTAssertEqual(sut.animals, [stubbedAnimal])
        
        sut.removeAnimalPhotoFromLocal(animalPhoto: stubbedAnimalPhotos[0])
        
        waitForExpectations(timeout: 0.5) { _ in
            XCTAssertEqual(sut.animals.count, 1)
            XCTAssertEqual(sut.animals[0].photos.count, 1)
            XCTAssertNotEqual(sut.animals, [stubbedAnimal])
        }
    }
    
    // MARK: - Helpers
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> FavoritesAnimalViewModel {
        InjectedValue[\.animalStorage] = mockAnimalStorage
        let sut = FavoritesAnimalViewModel()
        trackForMemoryLeaks(sut)
        
        return sut
    }
    
}
