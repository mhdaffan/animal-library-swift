//
//  FavoritesAnimalHeaderView.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 18/01/24.
//

import UIKit
import SnapKit

final class FavoritesAnimalHeaderView: UITableViewHeaderFooterView {
    
    // MARK: - UI Properties
    
    let titleLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .poppinsSemiBold(16)
        $0.numberOfLines = 0
        $0.backgroundColor = .white
    }
    let lineView = UIView().then {
        $0.backgroundColor = .lightGray
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
        contentView.backgroundColor = .white
        contentView.addSubviews(titleLabel, lineView)
        titleLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.top.bottom.equalToSuperview().inset(12)
        }
        lineView.snp.makeConstraints {
            $0.bottom.leading.trailing.equalToSuperview()
            $0.height.equalTo(1)
        }
    }
    
    // MARK: - Internal Methods
    
    func updateUI(name: String, type: String) {
        titleLabel.text = "\(type) - \(name)"
    }
    
}
