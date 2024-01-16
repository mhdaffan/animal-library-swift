//
//  AnimalPicturesViewController.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit
import SnapKit

final class AnimalPicturesViewController: ViewController {
    
    // MARK: - UI Properties
    
    let scrollView = UIScrollView().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    let stackView = UIStackView().then {
        $0.axis = .vertical
        $0.spacing = 16
    }
    let detailView = AnimalDetailView()
    
    let viewModel: AnimalPicturesViewModel
    
    // MARK: - Initialized
    
    init(viewModel: AnimalPicturesViewModel) {
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
        detailView.updateUI(animal: viewModel.animal)
    }
    
    // MARK: - Private Methods
    
    private func configureUI() {
        title = viewModel.animal.name
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        scrollView.addSubview(stackView)
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.width.equalTo(view)
        }
        stackView.addArrangedSubview(detailView)
    }
    
}

// MARK: - Static Methods

extension AnimalPicturesViewController {
    
    static func build(animal: AnimalResponse) -> AnimalPicturesViewController {
        let viewModel = AnimalPicturesViewModel(animal: animal)
        return AnimalPicturesViewController(viewModel: viewModel)
    }
    
}
