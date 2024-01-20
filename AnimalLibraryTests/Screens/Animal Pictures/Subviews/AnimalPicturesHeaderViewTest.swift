//
//  AnimalPicturesHeaderViewTest.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 20/01/24.
//

@testable import AnimalLibrary
import XCTest

final class AnimalPicturesHeaderViewTest: XCTestCase {
    
    func test_configureUI() {
        let sut = makeSUT()
        
        XCTAssertTrue(sut.contentView.contains(sut.stackView))
        XCTAssertTrue(sut.stackView.arrangedSubviews.contains(sut.nameView))
        XCTAssertTrue(sut.stackView.arrangedSubviews.contains(sut.locationsView))
        XCTAssertTrue(sut.stackView.arrangedSubviews.contains(sut.lifespanView))
        XCTAssertTrue(sut.stackView.arrangedSubviews.contains(sut.sizeView))
    }
    
    func test_updateUI_withFullValues() {
        assertUpdateUI(
            stubbedAnimal: AnimalModel.stub(),
            expLifespan: "8 - 15 years",
            expSize: "120kg - 249kg (264lbs - 550lbs), 1.4m - 2.5m (4.7ft - 8.2ft)")
    }
    
    func test_updateUI_withEmptyLifespanAndEmptySize() {
        var stubbedAnimal = AnimalModel.stub()
        stubbedAnimal.characteristics.lifespan = nil
        stubbedAnimal.characteristics.weight = nil
        stubbedAnimal.characteristics.height = nil
        stubbedAnimal.characteristics.length = nil
        
        assertUpdateUI(
            stubbedAnimal: stubbedAnimal,
            expLifespan: "",
            expSize: "")
    }
    
    // MARK: - Helpers
    
    func assertUpdateUI(
        stubbedAnimal: AnimalModel,
        expLifespan: String,
        expSize: String,
        file: StaticString = #file,
        line: UInt = #line)
    {
        let sut = makeSUT()
        
        sut.updateUI(animal: stubbedAnimal)
        
        XCTAssertEqual(sut.nameView.titleLabel.text, "Name")
        XCTAssertEqual(sut.nameView.descriptionLabel.text, "Cape Lion")
        XCTAssertEqual(sut.locationsView.titleLabel.text, "Locations")
        XCTAssertEqual(sut.locationsView.descriptionLabel.text, "Africa, Asia")
        XCTAssertEqual(sut.lifespanView.titleLabel.text, "Lifespan")
        XCTAssertEqual(sut.lifespanView.descriptionLabel.text, expLifespan)
        XCTAssertEqual(sut.sizeView.titleLabel.text, "Size")
        XCTAssertEqual(sut.sizeView.descriptionLabel.text, expSize)
        XCTAssertEqual(sut.sizeView.isHidden, expSize.isEmpty)
        XCTAssertEqual(sut.lifespanView.isHidden, expLifespan.isEmpty)
    }
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> AnimalPicturesHeaderView {
        let sut = AnimalPicturesHeaderView()
        trackForMemoryLeaks(sut)
        
        return sut
    }
    
}
