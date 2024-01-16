//
//  RepositoryInjectionkey.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

struct AnimalRepositoryInjectionKey: InjectionKey {
    static var currentValue: AnimalRepository = AnimalRepositoryImpl()
}

extension InjectedValue {
    
    var animalRepository: AnimalRepository {
        get { Self[AnimalRepositoryInjectionKey.self] }
        set { Self[AnimalRepositoryInjectionKey.self] = newValue }
    }
    
}
