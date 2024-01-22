//
//  AnimalPicturesItemCellTest.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 20/01/24.
//

@testable import AnimalLibrary
import XCTest

final class AnimalPicturesItemCellTest: XCTestCase {
    
    func test_configureUI() {
        let sut = makeSUT()
        
        XCTAssertTrue(sut.contentView.contains(sut.photoImageView))
        XCTAssertTrue(sut.contentView.contains(sut.photographerLabel))
        XCTAssertTrue(sut.contentView.contains(sut.altLabel))
        XCTAssertTrue(sut.contentView.contains(sut.favoriteButton))
    }
    
    func test_updateUI_withFavoritePhoto() {
        assertUpdateUI(
            stubbedAnimalPhoto: AnimalPhoto.stub(favorited: true),
            expButtonImage: UIImage.icHeartFill?.color(.red),
            expButtonTitle: "Remove from favorite",
            expAlt: "Lion Lying on Ground in Wild Nature")
    }
    
    func test_updateUI_withEmptyAltValue() {
        var stubbedAnimalPhoto = AnimalPhoto.stub(favorited: true)
        stubbedAnimalPhoto.alt = ""
        
        assertUpdateUI(
            stubbedAnimalPhoto: stubbedAnimalPhoto,
            expButtonImage: UIImage.icHeartFill?.color(.red),
            expButtonTitle: "Remove from favorite",
            expAlt: "-")
    }
    
    func test_updateUI_withUnfavoritedPhoto() {
        assertUpdateUI(
            stubbedAnimalPhoto: AnimalPhoto.stub(favorited: false),
            expButtonImage: UIImage.icHeart?.color(.darkGray),
            expButtonTitle: "Add to favorite",
            expAlt: "Lion Lying on Ground in Wild Nature")
    }
    
    func test_tapFavoriteButton() {
        let sut = makeSUT()
        let exp = expectation(description: "waiting for favoriteButton tapped")
        sut.onTapFavorite = { _ in
            exp.fulfill()
        }
        
        sut.updateUI(photo: AnimalPhoto.stub(favorited: true))
        XCTAssertTrue(sut.favoriteButton.isSelected)
        sut.favoriteButton.sendActions(for: .primaryActionTriggered)
        
        waitForExpectations(timeout: 0.5) { _ in
            XCTAssertFalse(sut.favoriteButton.isSelected)
        }
    }
    
    // MARK: - Helpers
    
    func assertUpdateUI(
        stubbedAnimalPhoto: AnimalPhoto,
        expButtonImage: UIImage?,
        expButtonTitle: String,
        expAlt: String,
        file: StaticString = #file,
        line: UInt = #line)
    {
        let sut = makeSUT()
        
        sut.updateUI(photo: stubbedAnimalPhoto)
        
        XCTAssertEqual(sut.photographerLabel.text, "by \(stubbedAnimalPhoto.photographer)")
        XCTAssertEqual(sut.altLabel.text, expAlt)
        XCTAssertEqual(sut.favoriteButton.currentImage, expButtonImage)
        XCTAssertEqual(sut.favoriteButton.currentTitle, expButtonTitle)
        XCTAssertEqual(sut.favoriteButton.isSelected, stubbedAnimalPhoto.isFavorited)
    }
    
    func makeSUT(file: StaticString = #file, line: UInt = #line) -> AnimalPicturesItemCell {
        let sut = AnimalPicturesItemCell()
        trackForMemoryLeaks(sut)
        
        return sut
    }
    
}
