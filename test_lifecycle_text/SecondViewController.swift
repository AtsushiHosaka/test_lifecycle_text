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
    
    @IBAction func back() {
        dismiss(animated: true)
    }
}
