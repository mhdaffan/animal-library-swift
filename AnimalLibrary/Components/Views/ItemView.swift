//
//  ItemView.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit
import SnapKit

final class ItemView: UIStackView {
    
    // MARK: - UI Properties
    
    let titleLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .poppinsSemiBold(16)
        $0.numberOfLines = 0
    }
    let descriptionLabel = UILabel().then {
        $0.textColor = .darkGray
        $0.font = .poppinsMedium(16)
        $0.numberOfLines = 0
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
        axis = .horizontal
        spacing = 16
        alignment = .top
        distribution = .fill
        addArrangedSubviews(titleLabel, descriptionLabel)
    }
    
    // MARK: - Internal Methods
    
    func updateUI(title: String, description: String, titleWidth: CGFloat) {
        titleLabel.snp.remakeConstraints {
            $0.width.equalTo(titleWidth)
        }
        titleLabel.text = title
        descriptionLabel.text = description
    }
    
}
