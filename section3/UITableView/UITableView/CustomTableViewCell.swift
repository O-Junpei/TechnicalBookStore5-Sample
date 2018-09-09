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
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // imageView
        thumbnailImageView = UIImageView()
        thumbnailImageView.backgroundColor = UIColor.lightGray
        thumbnailImageView.contentMode = UIViewContentMode.scaleAspectFit
        thumbnailImageView.image = UIImage(named: "swift")
        self.contentView.addSubview(thumbnailImageView)

        // label
        label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
        self.contentView.addSubview(label)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let cellWidth: CGFloat = self.frame.width
        let cellHeight: CGFloat = self.frame.height
        let margin: CGFloat = 8

        // imageView
        let imageViewSize :CGFloat = cellHeight - margin * 2
        thumbnailImageView.frame = CGRect(x: margin, y: margin, width: imageViewSize, height: imageViewSize)

        // label
        label.frame = CGRect(x: cellHeight, y: 0, width: cellWidth - cellHeight, height: cellHeight)
    }
}
