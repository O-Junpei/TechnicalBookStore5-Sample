//
//  AppDelegate.swift
//  NavigationAndTabController
//
//  Created by junpei ono on 2018/09/09.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var tabBarController: UITabBarController?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // MARK: - NavigationBar
        // タイトル、ボタンの色
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]
        // ナビゲーションバーの背景色
        UINavigationBar.appearance().barTintColor = UIColor.red
        // 透過の設定
        UINavigationBar.appearance().isTranslucent = false
        
        // MARK: - TabBar
        // 選択時のタブアイコンの色
        UITabBar.appearance().tintColor = UIColor.orange
        // 選択時のタブアイコンの色
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
        // タブバーの背景色
        UITabBar.appearance().barTintColor = .purple
        // 透過の設定
        UITabBar.appearance().isTranslucent = false
        
        // MARK: - TabBar
        // ページを格納する配列
        var viewControllers: [UIViewController] = []
        
        // 1つ目のViewController
        let firstViewController: FirstViewController? = FirstViewController()
        // TabBarのアイコンに設定する画像は30×30の透過画像
        firstViewController?.tabBarItem = UITabBarItem(title: "First", image: UIImage(named: "swift-tab"), tag: 1)
        let firstNavigationController = UINavigationController(rootViewController: firstViewController!)
        viewControllers.append(firstNavigationController)
        
        // 2つ目のViewController
        let secondViewController: SecondViewController? = SecondViewController()
        secondViewController?.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.downloads, tag: 2)
        let secondNavigationController = UINavigationController(rootViewController: secondViewController!)
        viewControllers.append(secondNavigationController)
        
        // 3つ目のViewController
        let thirdViewController: ThirdViewController? = ThirdViewController()
        thirdViewController?.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.history, tag: 3)
        let thirdNavigationController = UINavigationController(rootViewController: thirdViewController!)
        viewControllers.append(thirdNavigationController)
        
        // TabBarControllerにViewControllerの配列を設定
        tabBarController = UITabBarController()
        tabBarController?.setViewControllers(viewControllers, animated: false)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window!.makeKeyAndVisible()
        window?.rootViewController = tabBarController
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}
    func applicationDidEnterBackground(_ application: UIApplication) {}
    func applicationWillEnterForeground(_ application: UIApplication) {}
    func applicationDidBecomeActive(_ application: UIApplication) {}
    func applicationWillTerminate(_ application: UIApplication) {}
}

