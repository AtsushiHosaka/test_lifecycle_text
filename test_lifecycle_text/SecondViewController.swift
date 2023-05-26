//
//  SecondViewController.swift
//  test_lifecycle_text
//
//  Created by 保坂篤志 on 2023/05/17.
//

import UIKit

class SecondViewController: UIViewController {
    
    var num: Int = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        //案1：画面遷移のたびにlabelの数字を1増やす
        //メリット：簡単な実装でDidLoadとWillAppearの差を学べる
        //デメリット：実用的でない他、あんまり他のライフサイクルを学ぶ機会にならないかも
        num += 1
        label.text = String(num)
        
        
        //案2：画面遷移のたびにlabelを100下に動かすアニメーション
        //メリット：新しい概念のアニメーションを学べる、WillAppearに加えて「画面遷移の後にアニメーションを始めてみたいね」みたいにしてDidAppearまで触れられる
        //デメリット：アニメーションの実装が若干だるい
        UIView.animate(withDuration: 1.0, animations: {
            self.label.center.y += 100
        })
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        num += 1
//        label.text = String(num)
//
//        UIView.animate(withDuration: 1.0, animations: {
//            self.label.center.y += 100
//        })
//    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        UIView.animate(withDuration: 1.0, animations: {
//            self.label.center.y += 100
//        })
//    }
    
    @IBAction func back() {
        dismiss(animated: true)
    }
}
