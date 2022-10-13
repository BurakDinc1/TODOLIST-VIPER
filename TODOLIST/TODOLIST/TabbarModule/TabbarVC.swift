//
//  TabbarVC.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import Foundation
import UIKit

class TabbarVC: UITabBarController {
    
    init(tabs: TabbarTabs) {
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = [tabs.todoVC, tabs.alarmVC]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TabbarVC--> Yüklendi")
    }
    
    override func viewDidLayoutSubviews() {
        self.setDesign()
    }
    
    private func setDesign() {
        self.tabBar.isTranslucent = true
        self.tabBar.layer.masksToBounds = true
        self.tabBar.layer.cornerRadius = 40
        self.tabBar.barStyle = .default
        self.tabBar.frame.origin.y = UIScreen.main.bounds.height - 125
        let width = UIScreen.main.bounds.width - 100
        self.tabBar.frame.size.width = width
        self.tabBar.frame.size.height = 80
        self.tabBar.frame.origin.x = (UIScreen.main.bounds.width / 2) - (width / 2)
        
        self.tabBar.standardAppearance = self.setTabbarAppearance()
        if #available(iOS 15, *) {
            self.tabBar.scrollEdgeAppearance = self.setTabbarAppearance()
        }
        
        let blurEffect = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = self.tabBar.bounds
        blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.tabBar.insertSubview(blurView, at: 0)
    }
    
    private func setTabbarAppearance() -> UITabBarAppearance {
        let tabbarAppearance = UITabBarAppearance()
        tabbarAppearance.backgroundColor = UIColor(named: "appMainColor")
        tabbarAppearance.backgroundImage = UIImage(named: "material_background_1")
        tabbarAppearance.stackedLayoutAppearance.normal.iconColor = .lightGray
        tabbarAppearance.stackedLayoutAppearance.selected.iconColor = .white
        tabbarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.lightGray]
        tabbarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.white]
        return tabbarAppearance
    }
}
