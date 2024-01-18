//
//  FavoritesAnimalViewController.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 18/01/24.
//

import UIKit
import SnapKit

final class FavoritesAnimalViewController: ViewController {
    
    // MARK: - UI Properties
    
    let viewModel: FavoritesAnimalViewModel
    
    // MARK: - Initialized
    
    init(viewModel: FavoritesAnimalViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Overidden Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Private Methods
    
    private func configureUI() {
        
    }
    
    private func addViewModelObservers() {
        
    }
    
}

// MARK: - Static Methods

extension FavoritesAnimalViewController {
    
    static func build() -> FavoritesAnimalViewController {
        let viewModel = FavoritesAnimalViewModel()
        return FavoritesAnimalViewController(viewModel: viewModel)
    }
    
}
