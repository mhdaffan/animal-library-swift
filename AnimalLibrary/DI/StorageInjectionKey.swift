//
//  StorageInjectionKey.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 17/01/24.
//

struct CoreDataStorageInjectionKey: InjectionKey {
    static var currentValue: CoreDataStorage = CoreDataStorageImpl()
}

struct AnimalStorageInjectionKey: InjectionKey {
    static var currentValue: AnimalEntityStorage = AnimalEntityStorageImpl()
}

extension InjectedValue {
    
    var coreDataStorage: CoreDataStorage {
        get { Self[CoreDataStorageInjectionKey.self] }
        set { Self[CoreDataStorageInjectionKey.self] = newValue }
    }
    
    var animalStorage: AnimalEntityStorage {
        get { Self[AnimalStorageInjectionKey.self] }
        set { Self[AnimalStorageInjectionKey.self] = newValue }
    }
    
}
