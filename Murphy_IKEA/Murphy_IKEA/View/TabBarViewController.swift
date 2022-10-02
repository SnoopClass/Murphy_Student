//
//  TabBarViewController.swift
//  Murphy_IKEA
//
//  Created by Somin Park on 2022/10/02.
//

import UIKit

class TabBarViewController: UITabBarController {

    let homeVC = HomeViewController()
    let searchVC = SearchViewController()
    let profileVC = ProfileViewController()
    let wishVC = WishViewController()
    let cartVC = CartViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarView()
        setTabBarItem()
    }
    
    func setTabBarView() {
        let navigationHome = UINavigationController(rootViewController: homeVC)
        let navigationSearch = UINavigationController(rootViewController: searchVC)
        let navigationProfile = UINavigationController(rootViewController: profileVC)
        let navigationWish = UINavigationController(rootViewController: wishVC)
        let navigationCart = UINavigationController(rootViewController: cartVC)
        
        setViewControllers([navigationHome, navigationSearch,navigationProfile, navigationWish, navigationCart], animated: false)
    }
    
    func setTabBarItem() {
        tabBar.unselectedItemTintColor = .systemGray3
        tabBar.tintColor = .black
        homeVC.tabBarItem.image = UIImage.init(systemName: "house")
        searchVC.tabBarItem.image = UIImage.init(systemName: "magnifyingglass")
        profileVC.tabBarItem.image = UIImage.init(systemName: "person")
        wishVC.tabBarItem.image = UIImage.init(systemName: "heart")
        cartVC.tabBarItem.image = UIImage.init(systemName: "cart")
    }
}
