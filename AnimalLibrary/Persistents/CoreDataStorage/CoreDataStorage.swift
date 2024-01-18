//
//  CoreDataStorage.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 17/01/24.
//

import CoreData

protocol CoreDataStorage {
    func performBackgroundTask(_ block: @escaping (NSManagedObjectContext) -> Void)
    func saveContext()
}

final class CoreDataStorageImpl: CoreDataStorage {
    
    // MARK: - Core Data stack
    
    private lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "CoreDataStorage")
        container.loadPersistentStores { _, error in
            if let error = error as NSError? {
                fatalError("CoreDataStorage Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                fatalError("CoreDataStorage Unresolved error \(error), \((error as NSError).userInfo)")
            }
        }
    }

    func performBackgroundTask(_ block: @escaping (NSManagedObjectContext) -> Void) {
        persistentContainer.performBackgroundTask(block)
    }
    
}
