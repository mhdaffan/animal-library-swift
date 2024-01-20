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
        let stubbedAnimal = AnimalModel(
            name: "Cape Lion",
            type: "Lion",
            locations: [
                "Africa",
                "Asia"
            ],
            photos: [],
            characteristics: AnimalCharacteristicsModel(
                habitat: "open woodland, scrub, grassland",
                lifespan: "8 - 15 years",
                weight: "120kg - 249kg (264lbs - 550lbs)",
                height: nil,
                length: "1.4m - 2.5m (4.7ft - 8.2ft)"))
        let sut = makeSUT()
        
        sut.updateUI(animal: stubbedAnimal)
        
        XCTAssertEqual(sut.nameLabel.text, "Cape Lion")
        XCTAssertEqual(sut.locationLabel.text, "Africa, Asia")
    }
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> AnimalListItemCell {
        var sut = AnimalListItemCell()
        trackForMemoryLeaks(sut)
        
        return sut
    }
    
}
