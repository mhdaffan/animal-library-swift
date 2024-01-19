//
//  PhotoResponse.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

struct PhotoListResponse: Codable {
    var photos: [PhotoResponse]
}

struct PhotoResponse: Codable {
    let id: Int
    let photographer: String
    let alt: String
    let src: PhotoSourceResponse
}

struct PhotoSourceResponse: Codable {
    let landscape: String
}

extension PhotoListResponse {
    
    func toAnimalPhotoList() -> AnimalPhotoList {
        return AnimalPhotoList(photos: photos.map { $0.toAnimalPhotoModel() })
    }
}

extension PhotoResponse {
    
    func toAnimalPhotoModel() -> AnimalPhoto {
        return AnimalPhoto(
            id: self.id,
            photographer: self.photographer,
            alt: self.alt,
            url: self.src.landscape,
            isFavorited: false)
    }
}
