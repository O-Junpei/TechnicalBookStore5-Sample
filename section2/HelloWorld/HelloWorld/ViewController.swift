//
//  ViewController.swift
//  HelloWorld
//
//  Created by junpei ono on 2018/08/31.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 背景色を白色に
        view.backgroundColor = UIColor.white
        // インスタンス生成
        let label: UILabel = UILabel()
        // サイズの指定、画面と同じ大きさにする
        label.frame = view.bounds
        // テキストの設定
        label.text = "Hello World"
        // 中央揃え
        label.textAlignment = NSTextAlignment.center
        // Viewに追加
        view.addSubview(label)
    }
}
