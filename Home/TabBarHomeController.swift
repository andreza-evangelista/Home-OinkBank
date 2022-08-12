//
//  TabBarHome.swift
//  CRUD MVVM
//
//  Created by user217584 on 05/07/22.
//

import Foundation
import UIKit

class TabBarHomeController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabBarController()
    }
    
    private func setupTabBarController() {
        self.setViewControllers([NewHomeViewController(),ExtractViewController(),ToolsViewController()], animated: false)
        self.tabBar.backgroundColor = .MyTheme.backgroundColor
        self.tabBar.tintColor = .MyTheme.blueColor
        self.tabBar.isTranslucent = false
        
        guard let items = tabBar.items else{return}
        
        items[0].title = "Home".localized(tableName: "HomeLocalizable")
        items[0].image = UIImage(named: "homeIcon")
        
        items[1].title = "Extrato".localized(tableName: "HomeLocalizable")
        items[1].image = UIImage(named: "extractIcon")
        
        items[2].title = "Ferramentas".localized(tableName: "HomeLocalizable")
        items[2].image = UIImage(named: "toolIcon")
    }
}
