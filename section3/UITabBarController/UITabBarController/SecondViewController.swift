//
//  SecondViewController.swift
//  UITabBarController
//
//  Created by junpei ono on 2018/09/09.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let label: UILabel = UILabel()
        label.text = "Second"
        label.frame = self.view.frame
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont.boldSystemFont(ofSize: 40)
        self.view.addSubview(label)
    }
}
