//
//  AnimalPhotoMock.swift
//  AnimalLibraryTests
//
//  Created by Muhammad Affan on 20/01/24.
//

@testable import AnimalLibrary

extension AnimalPhoto {
    
    static func stub(favorited: Bool) -> AnimalPhoto {
        AnimalPhoto(
            id: 18039316,
            photographer: "Kallie Calitz",
            alt: "Lion Lying on Ground in Wild Nature",
            url: "https://images.pexels.com/photos/18039316/pexels-photo-18039316.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
            isFavorited: favorited)
    }
    
}
