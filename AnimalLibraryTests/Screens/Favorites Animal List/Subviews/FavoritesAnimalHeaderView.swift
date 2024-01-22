//
//  FavoritesAnimalHeaderView.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 22/01/24.
//

@testable import AnimalLibrary
import XCTest

final class FavoritesAnimalHeaderViewTest: XCTestCase {
    
    func test_configureUI() {
        let sut = makeSUT()
        
        XCTAssertTrue(sut.contentView.contains(sut.titleLabel))
        XCTAssertTrue(sut.contentView.contains(sut.lineView))
    }
    
    func test_updateUI() {
        let sut = makeSUT()
        
        sut.updateUI(name: "Cape Lion", type: "Lion")
        
        XCTAssertEqual(sut.titleLabel.text, "Lion - Cape Lion")
    }
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> FavoritesAnimalHeaderView {
        let sut = FavoritesAnimalHeaderView()
        trackForMemoryLeaks(sut)
        
        return sut
    }
    
}
