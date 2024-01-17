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
    let portrait: String
    let landscape: String
}
