//
//  ViewController.swift
//  CustomUIView
//
//  Created by junpei ono on 2018/09/09.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        // CustomViewのインスタンスを生成
        let customView = CustomView()
        // x 50, y 50 に width 100, height 120
        customView.frame = CGRect(x: 50, y: 50, width: 100, height: 120)
        view.addSubview(customView)
    }
}
