//
//  Coordinator.swift
//  Coordinator
//
//  Created by jc.kim on 2/28/23.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}


