//
//  AnimalPhotoEntityMapping.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 18/01/24.
//

import CoreData

extension AnimalPhotoEntity {
    
    func toAnimalPhoto() -> AnimalPhoto {
        return AnimalPhoto(
            id: Int(self.id),
            photographer: self.photographer ?? "",
            alt: self.alt ?? "",
            url: self.url ?? "",
            isFavorited: self.isFavoried)
    }
    
}

extension AnimalPhoto {
    
    func toEntity(context: NSManagedObjectContext) -> AnimalPhotoEntity {
        let photoEntity = AnimalPhotoEntity(context: context)
        photoEntity.id = Int64(self.id)
        photoEntity.alt = self.alt
        photoEntity.photographer = self.photographer
        photoEntity.url = self.url
        
        return photoEntity
    }
    
    func toPhotoResponse() -> PhotoResponse {
        return PhotoResponse(
            id: self.id,
            photographer: self.photographer,
            alt: self.alt,
            src: PhotoSourceResponse(landscape: self.url)
        )
    }
    
}
