//
//  AnimalResponse.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

struct AnimalResponse: Codable, Equatable {
    let name: String
    let taxonomy: AnimalTaxonomyResponse?
    let locations: [String]
    let characteristics: AnimalCharacteristicsResponse
    
    enum CodingKeys: String, CodingKey {
        case name, taxonomy, locations, characteristics
    }
    
    var size: String {
        let sizes: [String?] = [characteristics.weight, characteristics.height, characteristics.length]
        return sizes.compactMap { $0 }.joined(separator: ", ")
    }
}

struct AnimalTaxonomyResponse: Codable, Equatable {
    let kingdom: String?
    let phylum: String?
    let `class`: String?
    let order: String?
    let family: String?
    let genus: String?
    let scientificName: String?
    
    enum CodingKeys: String, CodingKey {
        case kingdom, phylum, `class`, order, family, genus
        case scientificName = "scientific_name"
    }
}

struct AnimalCharacteristicsResponse: Codable, Equatable {
    let habitat: String?
    let lifespan: String?
    let weight: String?
    let height: String?
    let length: String?
    
    enum CodingKeys: String, CodingKey {
        case habitat, lifespan, weight, height, length
    }
}
