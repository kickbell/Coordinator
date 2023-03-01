//
//  MainTabBarController.swift
//  Coordinator
//
//  Created by jc.kim on 3/2/23.
//

import UIKit

class MainTabBarController: UITabBarController {
    let main = MainCoordinator(navigationController: UINavigationController())
    let buy = BuyCoordinator(navigationController: UINavigationController())
    let createAccount = CreateAccountCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()
        main.start()
        buy.start()
        createAccount.start()
        
        viewControllers = [
            main.navigationController,
            buy.navigationController,
            createAccount.navigationController
        ]
    }
}
