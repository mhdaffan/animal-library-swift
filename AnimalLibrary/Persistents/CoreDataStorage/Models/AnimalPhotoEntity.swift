//
//  AnimalPhotoEntity.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 17/01/24.
//

import CoreData

@objc(AnimalPhotoEntity)
final class AnimalPhotoEntity: NSManagedObject, Identifiable {
    @NSManaged var id: Int
    @NSManaged var photographer: String
    @NSManaged var alt: String
    @NSManaged var url: String
}

extension AnimalPhotoEntity {
    
    convenience init(photo: AnimalPhoto, insertInto context: NSManagedObjectContext) {
        self.init(context: context)
        id = photo.id
        photographer = photo.photographer
        alt = photo.alt
        url = photo.url
    }
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<AnimalPhotoEntity> {
        return NSFetchRequest<AnimalPhotoEntity>(entityName: "AnimalPhotoEntity")
    }
    
}
