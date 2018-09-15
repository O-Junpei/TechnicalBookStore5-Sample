//
//  ViewController.swift
//  UILabel
//
//  Created by junpei ono on 2018/09/09.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        // x = 100, y = 100 の位置に
        // width 150, height可変のUILabelを設置
        // インスタンス生成
        let label: UILabel = UILabel()
        // テキストの設定
        label.text = "恥の多い生涯を送って来ました。自分には。。。"
        // 行数の設定、0にすることで表示可能最大行数が無限になる
        label.numberOfLines = 0
        // labelの横幅を設定、高さは0とする
        let size = CGSize(width: 150, height: 0)
        // 文字列の幅に調節したサイズを取得
        let fitedSize = label.sizeThatFits(size)
        // labelを文字列の幅に調節
        label.sizeToFit()
        // labelの大きさを設定する
        label.frame = CGRect(
            x: 100, y: 100,
            width: fitedSize.width,
            height: fitedSize.height)
        // 背景色を薄い灰色にする
        label.backgroundColor = UIColor.lightGray
        // Viewに追加
        self.view.addSubview(label)
    }
}


