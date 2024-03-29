//
//  AnimalListItemCell.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit
import SnapKit

final class AnimalListItemCell: UITableViewCell {
    
    // MARK: - UI Properties
    
    let nameLabel = UILabel().then {
        $0.textColor = .darkGray
        $0.font = .poppinsMedium(14)
        $0.numberOfLines = 0
        $0.backgroundColor = .white
    }
    let locationLabel = UILabel().then {
        $0.textColor = .gray
        $0.font = .poppinsRegular(12)
        $0.numberOfLines = 0
        $0.backgroundColor = .white
    }
    let lineView = UIView().then {
        $0.backgroundColor = .lightGray
    }
    
    // MARK: - Initialized
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
    private func configureUI() {
        selectionStyle = .none
        contentView.addSubviews(nameLabel, locationLabel, lineView)
        nameLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(8)
            $0.leading.trailing.equalToSuperview().inset(24)
        }
        locationLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom)
            $0.leading.trailing.equalTo(nameLabel)
            $0.bottom.equalToSuperview().inset(8)
        }
        lineView.snp.makeConstraints {
            $0.bottom.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.height.equalTo(1)
        }
    }
    
    // MARK: - Internal Methods
    
    func updateUI(animal: AnimalModel) {
        nameLabel.text = animal.name
        locationLabel.text = animal.locations.joined(separator: ", ")
    }
    
}
