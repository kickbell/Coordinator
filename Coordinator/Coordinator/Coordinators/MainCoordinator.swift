//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by jc.kim on 2/28/23.
//

import Foundation
import UIKit

class MainCoordinator: NSObject, Coordinator, UINavigationControllerDelegate, Buying, AccountCreating {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.delegate = self
        let vc = ViewController.instantiate()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        vc.buyAction = { [weak self] productType in
            self?.buySubscription(productType)
        }
        
        vc.createAccountAction = { [weak self] in
            self?.createAccount()
        }
//        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func buySubscription(_ productType: Int) {
        let child = BuyCoordinator(navigationController: navigationController)
        childCoordinators.append(child)
        child.buySubscription(productType)
    }
    
    func createAccount() {
        let child = CreateAccountCoordinator(navigationController: navigationController)
        childCoordinators.append(child)
        child.start()
    }
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }
        
        if navigationController.viewControllers.contains(fromViewController) {
            return
        }

//        if let buyViewController = fromViewController as? BuyViewController {
//            childDidFinish(buyViewController.coordinator)
//        }
        
        switch fromViewController {
        case let vc as BuyViewController: childDidFinish(vc.coordinator)
        case let vc as CreateAccountViewController: childDidFinish(vc.coordinator)
        default:
            break
        }
        

    }
}
