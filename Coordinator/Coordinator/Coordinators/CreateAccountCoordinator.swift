//
//  CreateAccountCoordinator.swift
//  Coordinator
//
//  Created by jc.kim on 3/1/23.
//

import Foundation
import UIKit

class CreateAccountCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = CreateAccountViewController.instantiate()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
