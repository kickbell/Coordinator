//
//  ViewController.swift
//  Coordinator
//
//  Created by jc.kim on 2/28/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func push() {
        let b = BViewController()
        b.seletedIndex = 0
        self.navigationController?.pushViewController(b, animated: true)
    }


}


class BViewController: UIViewController {
    var seletedIndex: Int = 0
}
