//
//  ViewController.swift
//  UINavigationController
//
//  Created by junpei ono on 2018/09/09.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "FirstView"
        self.view.backgroundColor = UIColor.white
        let viewWidth = self.view.frame.width
        let viewHeight = self.view.frame.height
        // 押されると画面遷移するボタン
        let transitionBtn = UIButton()
        transitionBtn.frame = CGRect(
            x: viewWidth * 0.2,
            y: viewHeight * 0.4,
            width: viewWidth * 0.6,
            height: viewHeight * 0.2)
        transitionBtn.backgroundColor = UIColor.blue
        transitionBtn.setTitle("Go SecondVC",
                               for: UIControlState.normal)
        transitionBtn.addTarget(self,
            action: #selector(goSevondVC(sender:)), for: .touchUpInside)
        self.view.addSubview(transitionBtn)
    }
    // ボタンが押されたら呼ばれるメソッド
    @objc internal func goSevondVC(sender: UIButton) {
        // 画面遷移する
        let secondVC: SecondViewController = SecondViewController()
        self.navigationController?.pushViewController(secondVC,
            animated: true)
    }
}

