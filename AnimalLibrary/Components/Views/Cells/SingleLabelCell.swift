//
//  SingleLabelCell.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 22/01/24.
//

import UIKit
import SnapKit

final class SingleLabelCell: UITableViewCell {
    
    let titleLabel = UILabel().then {
        $0.font = .poppinsRegular(14)
        $0.textColor = .darkGray
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
        contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.top.bottom.equalToSuperview().inset(8)
            $0.leading.trailing.equalToSuperview().inset(24)
        }
    }
    
    func updateUI(text: String) {
        titleLabel.text = text
    }
    
}
