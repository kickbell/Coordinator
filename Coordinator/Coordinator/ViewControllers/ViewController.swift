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
    }
    
    @IBOutlet weak var product: UISegmentedControl!
    
    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription(product.selectedSegmentIndex)
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
    
}

