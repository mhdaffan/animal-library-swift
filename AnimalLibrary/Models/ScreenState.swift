//
//  ScreenState.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

enum ScreenState {
    case idle
    case loading
    case loaded
    case failed(Error)
}

extension ScreenState {
    
    func isLoading() -> Bool {
        switch self {
        case .loading:
            return true
        default:
            return false
        }
    }
    
    func isLoaded() -> Bool {
        switch self {
        case .loaded:
            return true
        default:
            return false
        }
    }
    
    func isFailed() -> Bool {
        switch self {
        case .failed:
            return true
        default:
            return false
        }
    }
}
