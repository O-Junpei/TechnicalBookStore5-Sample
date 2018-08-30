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

        // インスタンス生成
        let label: UILabel = UILabel()
        // サイズの指定
        label.frame = self.view.frame
        // テキストの設定
        label.text = "Hello World"
        // フォントの設定
        // 太字で40px
        label.font = UIFont.boldSystemFont(ofSize: 40)
        //中央揃え
        label.textAlignment = NSTextAlignment.center
        //Viewに追加
        self.view.addSubview(label)
    }
}
