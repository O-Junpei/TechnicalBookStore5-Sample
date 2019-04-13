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
        title = "FirstView"
        view.backgroundColor = UIColor.white
        let viewWidth = view.frame.width
        let viewHeight = view.frame.height
        // 押されると画面遷移するボタン
        let transitionBtn = UIButton()
        transitionBtn.frame.size =
            CGSize(width: viewWidth * 0.6, height: viewHeight * 0.2)
        transitionBtn.center = view.center
        transitionBtn.backgroundColor = UIColor.blue
        transitionBtn.setTitle("Go SecondVC",
            for: UIControl.State.normal)
        transitionBtn.addTarget(self,
            action: #selector(goSevondVC(sender:)), for: .touchUpInside)
        view.addSubview(transitionBtn)
    }
    // ボタンが押されたら呼ばれるメソッド
    @objc func goSevondVC(sender: UIButton) {
        // 画面遷移
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC,
            animated: true)
    }
}

