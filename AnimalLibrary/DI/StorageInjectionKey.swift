//
//  StorageInjectionKey.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 17/01/24.
//

struct CoreDataStorageInjectionKey: InjectionKey {
    static var currentValue: CoreDataStorage = CoreDataStorageImpl()
}

extension InjectedValue {
    
    var coreDataStorage: CoreDataStorage {
        get { Self[CoreDataStorageInjectionKey.self] }
        set { Self[CoreDataStorageInjectionKey.self] = newValue }
    }
    
}
