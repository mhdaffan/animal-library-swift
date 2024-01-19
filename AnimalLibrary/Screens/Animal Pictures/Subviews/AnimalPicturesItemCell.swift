//
//  AnimalPicturesItemCell.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit
import SnapKit

extension UIButton.Configuration {
    
    static func mediumImaged(imagePlacement: NSDirectionalRectEdge) -> UIButton.Configuration {
        var configuration = UIButton.Configuration.plain()
        configuration.imagePlacement = imagePlacement
        configuration.buttonSize = .medium
        configuration.imagePadding = 8
        return configuration
    }
    
}

final class AnimalPicturesItemCell: UITableViewCell {
    
    // MARK: - Closures
    
    var onTapFavorite: ((Bool) -> Void)?
    
    // MARK: - UI Properties
    
    let photographerLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .poppinsRegular(12)
        $0.numberOfLines = 0
        $0.backgroundColor = .white
    }
    let altLabel = UILabel().then {
        $0.textColor = .darkGray
        $0.font = .poppinsMedium(14)
        $0.numberOfLines = 0
        $0.backgroundColor = .white
    }
    let photoImageView = UIImageView().then {
        $0.layer.cornerRadius = 8
        $0.clipsToBounds = true
    }
    let favoriteButton = UIButton(configuration: .mediumImaged(imagePlacement: .leading)).then {
        $0.setImage(.icHeartFill?.withTintColor(.red, renderingMode: .alwaysOriginal), for: .selected)
        $0.setImage(.icHeart?.withTintColor(.darkGray, renderingMode: .alwaysOriginal), for: .normal)
        $0.setTitle("Add to favorite", for: .normal)
        $0.setTitle("Remove from favorite", for: .selected)
        $0.setTitleColor(.darkGray, for: .normal)
        $0.setTitleColor(.red, for: .selected)
        $0.layer.borderWidth = 1
        $0.layer.cornerRadius = 8
        $0.titleLabel?.font = .poppinsSemiBold(14)
        $0.tintColor = .clear
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
        contentView.addSubviews(photoImageView, photographerLabel, altLabel, favoriteButton)
        let photoSize = AppConstants.sizeRatio(1200, 627, fromWidth: AppConstants.screenWidth - 48)
        
        photoImageView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.top.equalToSuperview().inset(8)
            $0.height.equalTo(photoSize.height)
        }
        altLabel.snp.makeConstraints {
            $0.top.equalTo(photoImageView.snp.bottom).offset(4)
            $0.leading.trailing.equalTo(photoImageView)
        }
        photographerLabel.snp.makeConstraints {
            $0.top.equalTo(altLabel.snp.bottom).offset(4)
            $0.leading.trailing.equalTo(photoImageView)
        }
        favoriteButton.snp.makeConstraints {
            $0.top.equalTo(photographerLabel.snp.bottom).offset(2)
            $0.leading.equalTo(photoImageView)
            $0.bottom.equalToSuperview().inset(8)
            $0.width.equalTo(250)
        }
        
        let action = UIAction { [weak self] _ in
            self?.tapFavorite()
        }
        favoriteButton.addAction(action, for: .primaryActionTriggered)
    }
    
    private func tapFavorite() {
        favoriteButton.isSelected.toggle()
        onTapFavorite?(favoriteButton.isSelected)
    }
    
    func updateFavoriteButtonBorderColor() {
        let color: UIColor = favoriteButton.isSelected ? .red : .darkGray
        favoriteButton.layer.borderColor = color.cgColor
    }
    
    // MARK: - Internal Methods
    
    func updateUI(photo: AnimalPhoto) {
        photographerLabel.text = "by " + photo.photographer
        altLabel.text = photo.alt.isEmpty ? "-" : photo.alt
        photoImageView.load(photo.url, placeholder: .icEmpty, contentMode: .scaleAspectFit)
        updateFavoriteButtonBorderColor()
        favoriteButton.isSelected = photo.isFavorited
    }
    
}
