//
//  AnimalListHeaderView.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit
import SnapKit

final class AnimalListHeaderView: UITableViewHeaderFooterView {
    
    // MARK: - UI Properties
    
    let nameLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .poppinsBold(16)
        $0.numberOfLines = 0
        $0.backgroundColor = .white
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
        contentView.backgroundColor = .lightGray.withAlphaComponent(0.3)
        contentView.addSubview(nameLabel)
        nameLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.top.bottom.equalToSuperview().inset(12)
        }
    }
    
    // MARK: - Internal Methods
    
    func updateUI(title: String) {
        nameLabel.text = "  " + title
    }
    
}
