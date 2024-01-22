//
//  PhotoResponse.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

struct PhotoListResponse: Codable {
    var photos: [PhotoResponse]
    var nextPage: String?
    
    enum CodingKeys: String, CodingKey {
        case photos
        case nextPage = "next_page"
    }
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
        return AnimalPhotoList(
            photos: photos.map { $0.toAnimalPhotoModel() },
            nextPage: nextPage
        )
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
