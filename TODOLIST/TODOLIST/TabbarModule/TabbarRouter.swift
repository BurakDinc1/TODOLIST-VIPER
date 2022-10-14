//
//  TabbarRouter.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import UIKit

class TabbarRouter {
    
    static func start() -> UITabBarController {
        
        let todoVC = NavigationBuilder.build(viewController: ToDoModuleBuilder.build())
        let createVC = NavigationBuilder.build(viewController: AlarmModuleBuilder.build())
        let alarmVC = NavigationBuilder.build(viewController: AlarmModuleBuilder.build())
        
        let todoTabbarItem = UITabBarItem(title: "", image: UIImage(named: "to-do-list")?.withRenderingMode(.alwaysTemplate), tag: 0)
        let createTabbarItem = UITabBarItem(title: "", image: nil, tag: 1)
        let alarmTabbarItem = UITabBarItem(title: "", image: UIImage(named: "alarm-clock")?.withRenderingMode(.alwaysTemplate), tag: 2)
        
        todoVC.tabBarItem = todoTabbarItem
        createVC.tabBarItem = createTabbarItem
        createVC.tabBarItem.isEnabled = false
        alarmVC.tabBarItem = alarmTabbarItem
        
        let tabbarTabs = (todoVC: todoVC, createVC: createVC, alarmVC: alarmVC)
        let tabbarVC = TabbarVC(tabs: tabbarTabs)
        return tabbarVC
    }
    
}
