//
//  BuyCoordinator.swift
//  Coordinator
//
//  Created by jc.kim on 3/1/23.
//

import Foundation
import UIKit

class BuyCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = BuyViewController.instantiate()
        navigationController.pushViewController(vc, animated: true)
    }
}
