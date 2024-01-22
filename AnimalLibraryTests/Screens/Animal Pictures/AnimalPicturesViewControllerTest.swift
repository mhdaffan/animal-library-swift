//
//  AnimalPicturesViewControllerTest.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 22/01/24.
//

@testable import AnimalLibrary
import XCTest

final class AnimalPicturesViewControllerTest: XCTestCase {
    
    private var mockRepo = PhotoRepositoryMockImpl()
    private var mockAnimalStorage = AnimalEntityStorageMockImpl()
    
    func test_configureUI() {
        let sut = makeSUT()
        sut.loadViewIfNeeded()
        
        XCTAssertTrue(sut.view.contains(sut.tableView))
    }
    
    func test_onStateChangedToLoading_expectIndicatorViewIsAnimating() {
        let sut = makeSUT()
        sut.loadViewIfNeeded()
        
        sut.viewModel.state = .loading
        XCTAssertTrue(sut.indicatorView.isAnimating)
    }
    
    func test_onStateChangedToLoaded_expectIndicatorViewIsNotAnimating() {
        // given
        let sut = makeSUT()
        sut.loadViewIfNeeded()
        
        // when first condition
        sut.viewModel.state = .loading
        XCTAssertTrue(sut.indicatorView.isAnimating)
        
        // expectation
        sut.viewModel.state = .loaded
        XCTAssertFalse(sut.indicatorView.isAnimating)
    }
    
    func test_onStateChangedToFailed_expectIndicatorViewIsNotAnimating() {
        // given
        let sut = makeSUT()
        sut.loadViewIfNeeded()
        
        // when first condition
        sut.viewModel.state = .loading
        XCTAssertTrue(sut.indicatorView.isAnimating)
        
        // expectation
        sut.viewModel.state = .failed(APIError.noConnection)
        XCTAssertFalse(sut.indicatorView.isAnimating)
    }
    
    // MARK: - Helpers
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> AnimalPicturesViewController {
        InjectedValue[\.photoRepository] = mockRepo
        InjectedValue[\.animalStorage] = mockAnimalStorage
        let sut = AnimalPicturesViewController.build(animal: AnimalModel.stub())
        trackForMemoryLeaks(sut)
        
        return sut
    }
    
}
