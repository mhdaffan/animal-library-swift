//
//  AnimalListItemCell.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit
import SnapKit

final class AnimalListItemCell: UITableViewCell {
    
    let nameLabel = UILabel().then {
        $0.text = "Animal"
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 14)
        $0.numberOfLines = 0
    }
    let locationLabel = UILabel().then {
        $0.text = "Location"
        $0.textColor = .darkGray
        $0.font = .systemFont(ofSize: 12)
        $0.numberOfLines = 0
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        contentView.addSubviews(nameLabel, locationLabel)
        nameLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(4)
            $0.leading.trailing.equalToSuperview().inset(24)
        }
        locationLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(2)
            $0.leading.trailing.equalTo(nameLabel)
            $0.bottom.equalToSuperview().inset(4)
        }
    }
    
}
