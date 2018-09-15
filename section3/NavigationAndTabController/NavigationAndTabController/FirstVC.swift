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
        self.title = "First View"
        self.view.backgroundColor = .orange
        // Viewの横幅を取得
        let viewWidth: CGFloat = self.view.frame.size.width
        // Viewの高さを取得
        let viewHeight: CGFloat = self.view.frame.size.height
        // ステータスバーの高さを取得
        let statusBarHeight: CGFloat =
            UIApplication.shared.statusBarFrame.size.height
        // ナビゲーションバーの高さの取得
        let navigationBarHeight: CGFloat = (
            self.navigationController?.navigationBar.frame.size.height)!
        // タブバーの高さを取得
        let tabBarHeight: CGFloat = (
            self.tabBarController?.tabBar.frame.size.height)!
        // 実際に使える画面の高さ
        let contentsViewHeight: CGFloat =
            viewHeight - (statusBarHeight + navigationBarHeight + tabBarHeight)

        let firstViewLabel = UILabel()
        // statusBarとnavigationBarの下にLabelを貼る
        firstViewLabel.frame = CGRect(
            x: 0, y: statusBarHeight + navigationBarHeight,
            width: viewWidth,
            height: contentsViewHeight)
        firstViewLabel.textAlignment = NSTextAlignment.center
        firstViewLabel.font = UIFont.boldSystemFont(ofSize: 40)
        firstViewLabel.textColor = .black
        firstViewLabel.text = "First View"
        self.view.addSubview(firstViewLabel)
    }
}
