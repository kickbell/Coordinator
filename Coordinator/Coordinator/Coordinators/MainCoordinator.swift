//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by jc.kim on 2/28/23.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func buySubscription() {
        let child = BuyCoordinator(navigationController: navigationController)
        childCoordinators.append(child)
        child.start()
    }
    
    func createAccount() {
        let vc = CreateAccountViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }
}
