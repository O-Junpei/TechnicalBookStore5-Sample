//
//  CustomView.swift
//  CustomUIView
//
//  Created by junpei ono on 2018/09/09.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit

class CustomView: UIView {

    var imageView: UIImageView!
    var label: UILabel!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        // 黒い枠線
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.black.cgColor

        // ImageViewをCustomViewに追加
        imageView = UIImageView()
        imageView.image = UIImage(named: "swift")
        imageView.contentMode = UIViewContentMode.scaleAspectFit
        self.addSubview(imageView)

        // LabelをCustomViewに追加
        label = UILabel()
        label.text = "Swift"
        label.textAlignment = .center
        self.addSubview(label)
    }

    override func layoutSubviews() {
        // CustomView の横幅と高さを取得
        let viewWidth: CGFloat = frame.width
        let viewHeight: CGFloat = frame.height
        let labelHeight: CGFloat = 20

        // imageViewの大きさを設定
        imageView.frame = CGRect(x: 0, y: 0, width: viewWidth, height: viewHeight - labelHeight)
        // labelの大きさを設定
        label.frame = CGRect(x: 0, y: viewHeight - labelHeight, width: viewWidth, height: labelHeight)
    }
}
