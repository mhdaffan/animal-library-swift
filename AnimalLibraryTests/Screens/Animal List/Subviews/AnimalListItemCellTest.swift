//
//  AnimalListItemCellTest.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 20/01/24.
//

@testable import AnimalLibrary
import XCTest

final class AnimalListItemCellTest: XCTestCase {
    
    func test_configureUI() {
        let sut = makeSUT()
        
        XCTAssertTrue(sut.contentView.contains(sut.nameLabel))
        XCTAssertTrue(sut.contentView.contains(sut.locationLabel))
        XCTAssertTrue(sut.contentView.contains(sut.lineView))
        XCTAssertEqual(sut.selectionStyle, UITableViewCell.SelectionStyle.none)
    }
    
    func test_updateUI() {
        let stubbedAnimal = AnimalModel.stub()
        let sut = makeSUT()
        
        sut.updateUI(animal: stubbedAnimal)
        
        XCTAssertEqual(sut.nameLabel.text, "Cape Lion")
        XCTAssertEqual(sut.locationLabel.text, "Africa, Asia")
    }
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> AnimalListItemCell {
        let sut = AnimalListItemCell()
        trackForMemoryLeaks(sut)
        
        return sut
    }
    
}
