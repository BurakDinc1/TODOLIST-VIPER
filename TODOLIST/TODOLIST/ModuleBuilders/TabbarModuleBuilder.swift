//
//  TabbarModuleBuilder.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import UIKit

protocol TabbarModuleBuilderProtocol {
    static func build(subModules: TabbarTabs) -> UITabBarController
}

class TabbarModuleBuilder: TabbarModuleBuilderProtocol {
    
    static func build(subModules: TabbarTabs) -> UITabBarController {
        let tabs = TabbarRouter.tabs(subModules: subModules)
        let tabbarViewController = TabbarVC(tabs: tabs)
        return tabbarViewController
    }
    
}
