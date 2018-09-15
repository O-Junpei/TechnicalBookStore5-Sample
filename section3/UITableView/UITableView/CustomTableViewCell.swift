//
//  CustomTableViewCell.swift
//  UITableView
//
//  Created by junpei ono on 2018/09/10.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit
class CustomTableViewCell: UITableViewCell {
    var thumbnailImageView: UIImageView!
    var label: UILabel!
    override init(style:
            UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // imageView
        thumbnailImageView = UIImageView()
        thumbnailImageView.backgroundColor = UIColor.lightGray
        thumbnailImageView.contentMode
            = UIViewContentMode.scaleAspectFit
        self.contentView.addSubview(thumbnailImageView)

        // label
        label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
        self.contentView.addSubview(label)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let cellWidth: CGFloat = self.frame.width
        let cellHeight: CGFloat = self.frame.height
        let margin: CGFloat = 8

        // thumbnailImageViewの縦、横幅を指定
        let imageViewSize: CGFloat = cellHeight - margin * 2
        // thumbnailImageViewの場所、大きさを指定
        thumbnailImageView.frame = CGRect(
            x: margin, y: margin,
            width: imageViewSize, height: imageViewSize)

        // labelの場所、大きさを背定
        label.frame = CGRect(
            x: cellHeight, y: 0,
            width: cellWidth - cellHeight, height: cellHeight)
    }
}
