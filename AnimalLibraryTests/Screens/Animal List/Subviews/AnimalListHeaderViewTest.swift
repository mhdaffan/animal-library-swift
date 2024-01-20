//
//  AnimalListHeaderViewTest.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 20/01/24.
//

@testable import AnimalLibrary
import XCTest

final class AnimalListHeaderViewTest: XCTestCase {
    
    func test_configureUI() {
        let sut = makeSUT()
        
        XCTAssertTrue(sut.contentView.contains(sut.nameLabel))
        XCTAssertTrue(sut.contentView.contains(sut.chevronButton))
        XCTAssertTrue(sut.contentView.contains(sut.lineView))
    }
    
    func test_updateUI() {
        let sut = makeSUT()
        
        sut.updateUI(title: "Lion", selected: true)
        
        XCTAssertEqual(sut.nameLabel.text, "Lion")
        XCTAssertEqual(sut.chevronButton.isSelected, true)
    }
    
    func test_tapChevronButton() {
        let sut = makeSUT()
        let exp = expectation(description: "waiting for chevronButton tapped")
        sut.onSelected = { _ in
            exp.fulfill()
        }
        
        sut.updateUI(title: "Lion", selected: true)
        XCTAssertEqual(sut.chevronButton.isSelected, true)
        sut.chevronButton.sendActions(for: .primaryActionTriggered)
        
        waitForExpectations(timeout: 0.5) { _ in
            XCTAssertFalse(sut.chevronButton.isSelected)
        }
    }
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> AnimalListHeaderView {
        let sut = AnimalListHeaderView()
        trackForMemoryLeaks(sut)
        
        return sut
    }
    
}
