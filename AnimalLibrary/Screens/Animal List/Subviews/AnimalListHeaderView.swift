//
//  AnimalListHeaderView.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit
import SnapKit

final class AnimalListHeaderView: UITableViewHeaderFooterView {
    
    // MARK: - Closures
    
    var onSelected: ((Bool) -> Void)?
    
    // MARK: - UI Properties
    
    let nameLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .poppinsSemiBold(16)
        $0.numberOfLines = 0
        $0.backgroundColor = .white
    }
    let chevronButton = UIButton().then {
        $0.setImage(.icChevronDown?.withTintColor(.darkGray, renderingMode: .alwaysOriginal), for: .normal)
        $0.setImage(.icChevronUp?.withTintColor(.darkGray, renderingMode: .alwaysOriginal), for: .selected)
        $0.contentHorizontalAlignment = .trailing
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
        contentView.addSubviews(nameLabel, chevronButton, lineView)
        nameLabel.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(64)
            $0.leading.equalToSuperview().inset(24)
            $0.top.bottom.equalToSuperview().inset(12)
        }
        chevronButton.snp.makeConstraints {
            $0.top.bottom.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(24)
        }
        lineView.snp.makeConstraints {
            $0.bottom.leading.trailing.equalToSuperview()
            $0.height.equalTo(1)
        }
        
        let action = UIAction { [weak self] _ in
            guard let `self` else {
                return
            }
            self.chevronButton.isSelected.toggle()
            self.onSelected?(chevronButton.isSelected)
        }
        chevronButton.addAction(action, for: .primaryActionTriggered)
    }
    
    // MARK: - Internal Methods
    
    func updateUI(title: String, selected: Bool) {
        nameLabel.text = title
        chevronButton.isSelected = selected
    }
    
}
