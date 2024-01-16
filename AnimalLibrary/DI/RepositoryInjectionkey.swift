//
//  RepositoryInjectionkey.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

struct AnimalRepositoryInjectionKey: InjectionKey {
    static var currentValue: AnimalRepository = AnimalRepositoryImpl()
}

struct PhotoRepositoryInjectionKey: InjectionKey {
    static var currentValue: PhotoRepository = PhotoRepositoryImpl()
}

extension InjectedValue {
    
    var animalRepository: AnimalRepository {
        get { Self[AnimalRepositoryInjectionKey.self] }
        set { Self[AnimalRepositoryInjectionKey.self] = newValue }
    }
    
    var photoRepository: PhotoRepository {
        get { Self[PhotoRepositoryInjectionKey.self] }
        set { Self[PhotoRepositoryInjectionKey.self] = newValue }
    }
    
}
