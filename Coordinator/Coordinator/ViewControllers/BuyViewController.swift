//
//  BuyViewController.swift
//  Coordinator
//
//  Created by jc.kim on 2/28/23.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {

    weak var coordinator: BuyCoordinator?
    var selectedProduct: Int = 0
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        coordinator?.didFinishBuying()
//    }

}
