//
//  CustomView.swift
//  CustomUIView
//
//  Created by junpei ono on 2018/09/09.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit
class CustomView: UIView {
    // メンバ変数
    var imageView: UIImageView!
    var label: UILabel!
    // 必須イニシャライザのoverrideに必要
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    // イニシャライザ
    override init(frame: CGRect) {
        super.init(frame: frame)
        // 黒い枠線
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.black.cgColor
        // ImageViewをCustomViewに追加
        imageView = UIImageView()
        imageView.image = UIImage(named: "swift")
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        self.addSubview(imageView)
        // LabelをCustomViewに追加
        label = UILabel()
        label.text = "Swift"
        label.textAlignment = .center
        self.addSubview(label)
    }
    // CustomViewが表示される前に呼ばれる
    override func layoutSubviews() {
        // CustomView の横幅と高さを取得
        let viewWidth: CGFloat = frame.width
        let viewHeight: CGFloat = frame.height
        let labelHeight: CGFloat = 20
        // viewの高さからlabelの高さを引い高さがimageViewの高さ
        let imageViewHeight:CGFloat = viewHeight - labelHeight
        // imageViewの大きさを設定、
        imageView.frame = CGRect(
            x: 0, y: 0,
            width: viewWidth,
            height: imageViewHeight)
        // labelの大きさを設定
        label.frame = CGRect(
            x: 0, y: imageViewHeight,
            width: viewWidth,
            height: labelHeight)
    }
}
