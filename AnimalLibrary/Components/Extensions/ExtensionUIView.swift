//
//  ExtensionUIView.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit
import SnapKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
    
    func addCardShadow(shouldRasterize: Bool = false) {
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.shadowOpacity = 0.15
        layer.shadowOffset = CGSize(width: 0, height: 1)
        layer.shadowRadius = 4
        layer.cornerRadius = 4
        if shouldRasterize {
            layer.shouldRasterize = shouldRasterize
            layer.rasterizationScale = UIScreen.main.scale
        }
    }
    
    func showLoadingIndicator() {
        guard viewWithTag(100001) == nil else {
            return
        }
        
        let indicator = UIActivityIndicatorView(style: .medium).then {
            $0.startAnimating()
            $0.tag = 100001
        }
        addSubview(indicator)
        indicator.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
    }
    
    func hideLoadingIndicator() {
        viewWithTag(100001)?.removeFromSuperview()
    }
    
    func loadingIndicator(isLoading: Bool) {
        isLoading ? showLoadingIndicator() : hideLoadingIndicator()
    }
    
}
