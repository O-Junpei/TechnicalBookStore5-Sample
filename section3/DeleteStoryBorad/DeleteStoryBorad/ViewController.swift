//
//  ViewController.swift
//  DeleteStoryBorad
//
//  Created by junpei ono on 2018/08/31.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        //self.view.backgroundColor = .white
        
        // インスタンス生成
        let label: UILabel = UILabel()
        // サイズの指定
        let viewWidth:CGFloat = self.view.frame.width
        let viewHeight:CGFloat = self.view.frame.height
        label.frame = CGRect(x: 0, y: 0, width: viewWidth, height: viewHeight)
        // テキストの設定
        label.text = "Delete\nStoryBorad"
        label.numberOfLines = 0
        // フォントの設定
        // 太字で40px
        label.font = UIFont.italicSystemFont(ofSize: 40)
        //中央揃え
        label.textAlignment = NSTextAlignment.center
        //Viewに追加
        self.view.addSubview(label)
        
    }
}
