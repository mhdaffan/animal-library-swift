//
//  AnimalPicturesHeaderView.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit
import SnapKit

final class AnimalPicturesHeaderView: UITableViewHeaderFooterView {
    
    // MARK: - UI Properties
    
    let nameView = ItemView()
    let locationsView = ItemView()
    let sizeView = ItemView()
    let lifespanView = ItemView()
    let stackView = UIStackView().then {
        $0.axis = .vertical
        $0.spacing = 4
        $0.distribution = .fill
        $0.layoutMargins = UIEdgeInsets(top: 16, left: 24, bottom: 16, right: 24)
        $0.isLayoutMarginsRelativeArrangement = true
    }
    
    // MARK: - Initialized
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureUI()
    }
    
    // MARK: - Private Methods
    
    private func configureUI() {
        backgroundColor = .white
        contentView.addSubview(stackView)
        stackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        stackView.addArrangedSubviews(nameView, locationsView, lifespanView, sizeView)
    }
    
    // MARK: - Internal Methods
    
    func updateUI(animal: AnimalResponse) {
        let titleWidth: CGFloat = 100
        nameView.updateUI(title: "Name", description: animal.name, titleWidth: titleWidth)
        locationsView.updateUI(title: "Locations", description: animal.locations.joined(separator: ", "), titleWidth: titleWidth)
        if let lifespan = animal.characteristics.lifespan {
            lifespanView.updateUI(title: "Lifespan", description: lifespan, titleWidth: titleWidth)
        }
        
        sizeView.updateUI(title: "Size", description: animal.size, titleWidth: titleWidth)
    }
    
}
