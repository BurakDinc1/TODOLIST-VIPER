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
        tabbarViewController.tabBar.backgroundColor = UIColor(named: "appMainColor")
        tabbarViewController.tabBar.tintColor = .white
        tabbarViewController.tabBar.unselectedItemTintColor = .white
        tabbarViewController.tabBar.isTranslucent = true
        tabbarViewController.tabBar.backgroundImage = UIImage(named: "material_background_1")
        tabbarViewController.tabBar.standardAppearance = TabbarModuleBuilder.setTabbarAppearance()
        return tabbarViewController
    }
    
    static func setTabbarAppearance() -> UITabBarAppearance {
        let tabbarAppearance = UITabBarAppearance()
        tabbarAppearance.configureWithDefaultBackground()
        tabbarAppearance.backgroundColor = UIColor(named: "appMainColor")
        tabbarAppearance.backgroundImage = UIImage(named: "material_background_1")
        return tabbarAppearance
    }
    
}
