//
//  ViewController.swift
//  NavigationAndTabController
//
//  Created by junpei ono on 2018/09/09.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit
class FirstVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First View"
        view.backgroundColor = .orange
        // Viewの横幅を取得
        let viewWidth = view.frame.size.width
        // Viewの高さを取得
        let viewHeight = view.frame.size.height
        // ステータスバーの高さを取得
        let statusBarHeight =
            UIApplication.shared.statusBarFrame.size.height
        // ナビゲーションバーの高さの取得
        var navigationBarHeight: CGFloat = 0
        if let navigationController = navigationController {
            navigationBarHeight
                = navigationController.navigationBar.frame.size.height
        }
        // タブバーの高さを取得
        var tabBarHeight: CGFloat = 0
        if let tabBarController = tabBarController {
            tabBarHeight = tabBarController.tabBar.frame.size.height
        }
        // 実際に使える画面の高さ
        let contentsViewHeight = viewHeight
            - (statusBarHeight + navigationBarHeight + tabBarHeight)

        let firstViewLabel = UILabel()
        // statusBarとnavigationBarの下にLabelを追加
        firstViewLabel.frame = CGRect(
            x: 0, y: statusBarHeight + navigationBarHeight,
            width: viewWidth,
            height: contentsViewHeight)
        firstViewLabel.textAlignment = NSTextAlignment.center
        firstViewLabel.font = UIFont.boldSystemFont(ofSize: 40)
        firstViewLabel.textColor = .black
        firstViewLabel.text = "First View"
        view.addSubview(firstViewLabel)
    }
}
