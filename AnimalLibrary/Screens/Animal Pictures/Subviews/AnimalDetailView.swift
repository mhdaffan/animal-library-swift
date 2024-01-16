//
//  AnimalDetailView.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit
import SnapKit

final class AnimalDetailView: UIStackView {
    
    // MARK: - UI Properties
    
    let nameView = ItemView()
    let locationsView = ItemView()
    let sizeView = ItemView()
    let lifespanView = ItemView()
    let lineView = UIView().then {
        $0.backgroundColor = .gray
    }
    
    // MARK: Initialized
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
    private func configureUI() {
        axis = .vertical
        spacing = 8
        distribution = .fill
        layoutMargins = UIEdgeInsets(top: 16, left: 24, bottom: 16, right: 24)
        isLayoutMarginsRelativeArrangement = true
        addArrangedSubviews(nameView, locationsView, lifespanView, sizeView)
    }
    
    // MARK: - Internal Methods
    
    func updateUI(animal: AnimalResponse) {
        let titleWidth: CGFloat = 100
        nameView.updateUI(title: "Name", description: animal.name, titleWidth: titleWidth)
        locationsView.updateUI(title: "Locations", description: animal.locations.joined(separator: ", "), titleWidth: titleWidth)
        lifespanView.updateUI(title: "Lifespan", description: animal.characteristics.lifespan, titleWidth: titleWidth)
        sizeView.updateUI(title: "Size", description: animal.size, titleWidth: titleWidth)
    }
    
}
