//
//  ViewModel.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

class ViewModel {
    
    var state: ScreenState = .idle {
        didSet {
            onStateChanged?(state)
        }
    }
    
    var onStateChanged: ((ScreenState) -> Void)?
}
