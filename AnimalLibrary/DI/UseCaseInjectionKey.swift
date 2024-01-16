//
//  UseCaseInjectionKey.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

struct AnimalUseCaseInjectionKey: InjectionKey {
    static var currentValue: AnimalUseCase = AnimalUseCaseImpl()
}

struct PhotoUseCaseInjectionKey: InjectionKey {
    static var currentValue: PhotoUseCase = PhotoUseCaseImpl()
}

extension InjectedValue {
    
    var animalUseCase: AnimalUseCase {
        get { Self[AnimalUseCaseInjectionKey.self] }
        set { Self[AnimalUseCaseInjectionKey.self] = newValue }
    }
    
    var photoUseCase: PhotoUseCase {
        get { Self[PhotoUseCaseInjectionKey.self] }
        set { Self[PhotoUseCaseInjectionKey.self] = newValue }
    }
    
}
