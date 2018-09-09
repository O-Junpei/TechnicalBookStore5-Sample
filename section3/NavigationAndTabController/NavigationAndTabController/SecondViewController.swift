//
//  SecondViewController.swift
//  NavigationAndTabController
//
//  Created by junpei ono on 2018/09/09.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Second View"
        self.view.backgroundColor = .orange
        
        let firstViewLabel = UILabel()
        firstViewLabel.frame = self.view.frame
        firstViewLabel.textAlignment = .center
        firstViewLabel.font = UIFont.boldSystemFont(ofSize: 40)
        firstViewLabel.textColor = .black
        firstViewLabel.text = "Second View"
        self.view.addSubview(firstViewLabel)
    }
}
