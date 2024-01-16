//
//  AnimalPicturesItemCell.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit
import SnapKit

final class AnimalPicturesItemCell: UITableViewCell {
    
    // MARK: - UI Properties
    
    let photographerLabel = UILabel().then {
        $0.textColor = .black
        $0.font = .poppinsRegular(12)
        $0.numberOfLines = 0
    }
    let altLabel = UILabel().then {
        $0.textColor = .darkGray
        $0.font = .poppinsMedium(14)
        $0.numberOfLines = 0
    }
    let photoImageView = UIImageView().then {
        $0.layer.cornerRadius = 8
        $0.clipsToBounds = true
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
        contentView.addSubviews(photoImageView, photographerLabel, altLabel)
        let photoSize = AppConstants.sizeRatio(1200, 627, fromWidth: AppConstants.screenWidth - 48)
        
        photoImageView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(24)
            $0.top.equalToSuperview().inset(8)
            $0.height.equalTo(photoSize.height)
        }
        altLabel.snp.makeConstraints {
            $0.top.equalTo(photoImageView.snp.bottom).offset(4)
            $0.leading.trailing.equalToSuperview().inset(24)
        }
        photographerLabel.snp.makeConstraints {
            $0.top.equalTo(altLabel.snp.bottom).offset(4)
            $0.leading.trailing.equalTo(altLabel)
            $0.bottom.equalToSuperview().inset(8)
        }
    }
    
    // MARK: - Internal Methods
    
    func updateUI(photo: PhotoResponse) {
        photographerLabel.text = "by " + photo.photographer
        altLabel.text = photo.alt
        photoImageView.load(photo.src.landscape, placeholder: nil, contentMode: .scaleAspectFit)
    }
    
}
