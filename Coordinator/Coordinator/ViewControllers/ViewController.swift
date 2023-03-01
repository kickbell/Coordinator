//
//  ViewController.swift
//  Coordinator
//
//  Created by jc.kim on 2/28/23.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        product.setTitle("컴퓨터", forSegmentAt: 0)
        product.setTitle("자전거", forSegmentAt: 1)
    }
    
    @IBOutlet weak var product: UISegmentedControl!
    
    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription(product.selectedSegmentIndex)
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
    
}

