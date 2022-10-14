//
//  TabbarVC.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//

import Foundation
import UIKit

class TabbarVC: UITabBarController {
    
    @objc let centerButton: UIButton = UIButton(type: .custom)
    
    init(tabs: TabbarTabs) {
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = [tabs.todoVC, tabs.createVC, tabs.alarmVC]
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
        self.setCenterButton()
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
    
    private func setCenterButton() {
        let centerX = (UIScreen.main.bounds.width / 2) - 30
        let yPositionCenter = UIScreen.main.bounds.height - 150
        self.centerButton.backgroundColor = UIColor(named: "appMainColor")
        self.centerButton.addBorder(borderWidth: 0.1,
                                    color: UIColor(named: "appMainColor")?.cgColor ?? UIColor.white.cgColor,
                                    cornerRadius: 30)
        self.centerButton.shadow(cornerRadius: 30,
                                 shadowRadius: 5,
                                 shadowColor: .white,
                                 shadowOffset: CGSize(width: 0, height: 0),
                                 shadowOpacity: 0.5)
        self.centerButton.setImage(UIImage(systemName: "plus")?.withRenderingMode(.alwaysTemplate), for: .normal)
        self.centerButton.tintColor = .white
        self.view.insertSubview(self.centerButton, aboveSubview: self.tabBar)
        self.centerButton.frame = CGRect(x: centerX, y: yPositionCenter, width: 60, height: 60)
        
        self.centerButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.centerButtonTapped(_:))))
    }
    
    @objc func centerButtonTapped(_ sender: UIButton) {
        self.selectedIndex = 1
    }
    
    private func setTabbarAppearance() -> UITabBarAppearance {
        let tabbarAppearance = UITabBarAppearance()
        tabbarAppearance.backgroundColor = UIColor(named: "appMainColor")
        tabbarAppearance.backgroundImage = UIImage(named: "material_background_1")
        tabbarAppearance.stackedLayoutAppearance.normal.iconColor = .white.withAlphaComponent(0.8)
        tabbarAppearance.stackedLayoutAppearance.selected.iconColor = .white
        tabbarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.lightGray]
        tabbarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.white]
        return tabbarAppearance
    }
}


extension TabbarVC: UITabBarControllerDelegate {
    override var selectedIndex: Int {
        didSet {
            self.selectedIndexForTabView(selectedIndex)
        }
    }
    
    override var selectedViewController: UIViewController? {
        didSet {
            self.selectedIndexForTabView(selectedIndex)
        }
    }
    
    // Change Selected Index Delegate
    private func selectedIndexForTabView(_ selectedIndex: Int) {
        self.centerButton.backgroundColor = selectedIndex == 1 ? UIColor.white : UIColor(named: "appMainColor")
        self.centerButton.tintColor = selectedIndex == 1 ? UIColor(named: "appMainColor") : .white
    }
}
