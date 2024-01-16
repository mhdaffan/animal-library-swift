//
//  AnimalResponse.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

struct AnimalResponse: Codable {
    let name: String
    let taxonomy: AnimalTaxonomyResponse?
    let locations: [String]
    let characteristics: AnimalCharacteristicsResponse
}

struct AnimalTaxonomyResponse: Codable {
    let kingdom: String
    let phylum: String
    let `class`: String?
    let order: String?
    let family: String?
    let genus: String?
    let scientificName: String
    
    enum CodingKeys: String, CodingKey {
        case kingdom, phylum, `class`, order, family, genus
        case scientificName = "scientific_name"
    }
}

struct AnimalCharacteristicsResponse: Codable {
    let habitat: String?
    let lifespan: String
    let weight: String?
    let height: String?
    
    enum CodingKeys: String, CodingKey {
        case habitat, lifespan, weight, height
    }
}
