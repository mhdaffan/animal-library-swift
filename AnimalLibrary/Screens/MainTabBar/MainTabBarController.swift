//
//  MainTabBarController.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 18/01/24.
//

import UIKit

final class MainTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    let animalListVC = AnimalListViewController.build().then {
        $0.title = "Animals"
        $0.tabBarItem.image = .icPawprint?.withTintColor(.darkGray, renderingMode: .alwaysOriginal)
        $0.tabBarItem.selectedImage = .icPawprintFill?.withTintColor(.red, renderingMode: .alwaysOriginal)
    }
    let favoritesVC = FavoritesAnimalViewController.build().then {
        $0.title = "Favorites"
        $0.tabBarItem.image = .icHeart?.withTintColor(.darkGray, renderingMode: .alwaysOriginal)
        $0.tabBarItem.selectedImage = .icHeartFill?.withTintColor(.red, renderingMode: .alwaysOriginal)
    }
    
    private var animationBounce: CAKeyframeAnimation = .bounceAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        configureTabbar()
        configureViewControllers()
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        guard let idx = tabBar.items?.firstIndex(of: item), tabBar.subviews.count > idx + 1,
            let imageView = tabBar.subviews[idx + 1].subviews.compactMap({ $0 as? UIImageView }).first else {
                return
        }
        imageView.layer.add(animationBounce, forKey: nil)
    }
    
    func configureViewControllers() {
        viewControllers = [
            UINavigationController(rootViewController: animalListVC),
            UINavigationController(rootViewController: favoritesVC)
        ]
    }
    
    func configureTabbar() {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        
        let fontAttribute = [NSAttributedString.Key.font: UIFont.poppinsSemiBold(14)]
        UITabBarItem.appearance().setTitleTextAttributes(fontAttribute, for: .normal)
        
        tabBar.tintColor = .red
        tabBar.unselectedItemTintColor = .darkGray
    }
    
}

extension CAKeyframeAnimation {
    
    static func bounceAnimation() -> CAKeyframeAnimation {
        let bounceAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
        bounceAnimation.values = [1.0, 1.2, 1.0]
        bounceAnimation.duration = TimeInterval(0.15)
        bounceAnimation.calculationMode = CAAnimationCalculationMode.cubic
        
        return bounceAnimation
    }
    
}
