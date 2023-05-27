//
//  SecondViewController.swift
//  test_lifecycle_text
//
//  Created by 保坂篤志 on 2023/05/17.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("second view")
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        print("second view")
//    }
    
    @IBAction func back() {
        dismiss(animated: true)
    }
}
