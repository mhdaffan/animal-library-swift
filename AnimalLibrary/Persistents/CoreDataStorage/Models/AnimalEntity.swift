//
//  AnimalEntity.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 17/01/24.
//

import CoreData

@objc(AnimalEntity)
final class AnimalEntity: NSManagedObject, Identifiable {
    @NSManaged var name: String
    @NSManaged var animalPhotos: Set<AnimalPhotoEntity>
}

extension AnimalEntity {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<AnimalEntity> {
        return NSFetchRequest<AnimalEntity>(entityName: "AnimalEntity")
    }
    
}
