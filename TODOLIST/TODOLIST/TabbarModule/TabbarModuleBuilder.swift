//
//  TabbarModuleBuilder.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import UIKit

class TabbarModuleBuilder: TabbarModuleBuilderProtocol {
    
    static func build() -> UITabBarController {
        let tabbarViewController = TabbarRouter.start()
        tabbarViewController.tabBar.tintColor = .white
        tabbarViewController.tabBar.unselectedItemTintColor = .white
        tabbarViewController.tabBar.isTranslucent = true
        
        tabbarViewController.tabBar.layer.masksToBounds = true
        tabbarViewController.tabBar.layer.cornerRadius = 40
        tabbarViewController.tabBar.barStyle = .default
        tabbarViewController.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        tabbarViewController.tabBar.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50)
        
        tabbarViewController.tabBar.standardAppearance = TabbarModuleBuilder.setTabbarAppearance()
        if #available(iOS 15, *) {
            tabbarViewController.tabBar.scrollEdgeAppearance = TabbarModuleBuilder.setTabbarAppearance()
        }
        
        return tabbarViewController
    }
    
    static func setTabbarAppearance() -> UITabBarAppearance {
        let tabbarAppearance = UITabBarAppearance()
        tabbarAppearance.backgroundColor = UIColor(named: "appMainColor")
        tabbarAppearance.backgroundImage = UIImage(named: "material_background_1")
        return tabbarAppearance
    }
    
}
