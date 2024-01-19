//
//  AnimalListViewControllerTest.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 19/01/24.
//

@testable import AnimalLibrary
import XCTest

final class AnimalListViewControllerTest: XCTestCase {
    
    private var mockRepo = AnimalRespositoryMockImpl()
    
    func test_configureUI() {
        let sut = makeSUT()
        sut.loadViewIfNeeded()
        
        XCTAssertTrue(sut.view.contains(sut.tableView))
    }
    
    func test_onStateChangedToLoading_expectLoadingViewExist() {
        let sut = makeSUT()
        sut.loadViewIfNeeded()
        
        sut.viewModel.onStateChanged?(.loading)
        
        XCTAssertNotNil(sut.view.viewWithTag(100001))
    }
    
    func test_onStateChangedToLoaded_expectLoadingViewNotExist() {
        // given
        let sut = makeSUT()
        sut.loadViewIfNeeded()
        
        // when first condition
        sut.viewModel.onStateChanged?(.loading)
        XCTAssertNotNil(sut.view.viewWithTag(100001))
        
        // expectation
        sut.viewModel.onStateChanged?(.loaded)
        XCTAssertNil(sut.view.viewWithTag(100001))
    }
    
    func test_onStateChangedToFailed_expectLoadingViewNotExist() {
        // given
        let sut = makeSUT()
        sut.loadViewIfNeeded()
        
        // when first condition
        sut.viewModel.onStateChanged?(.loading)
        XCTAssertNotNil(sut.view.viewWithTag(100001))
        
        // expectation
        sut.viewModel.onStateChanged?(.failed(APIError.noConnection))
        XCTAssertNil(sut.view.viewWithTag(100001))
    }
    
    func test_tableViewDataSource() {
        mockRepo.searchResult = .success(AnimalResponse.stub200())
        let sut = makeSUT()
        let exp = expectation(description: "waiting for state updated to loaded")
        
        
        sut.loadViewIfNeeded()
        
        sut.viewModel.onStateChanged = { state in
            if state.isLoaded() {
                exp.fulfill()
            }
        }
        
        waitForExpectations(timeout: 1) { _ in
            XCTAssertEqual(sut.tableView.numberOfSections, 2)
            XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), sut.viewModel.animals[0].kinds.count)
            XCTAssertEqual(sut.tableView.numberOfRows(inSection: 1), sut.viewModel.animals[1].kinds.count)
        }
    }
    
    // MARK: - Helpers
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> AnimalListViewController {
        InjectedValue[\.animalRepository] = mockRepo
        let sut = AnimalListViewController.build()
        trackForMemoryLeaks(sut)
        
        return sut
    }
    
}
