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
    func application(_
        application: UIApplication,
        didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // MARK: - TabBarController
        // ページを格納する配列
        var viewControllers: [UIViewController] = []

        // 1つ目のViewController
        let firstVC:FirstVC? = FirstVC()
        // TabBarのアイコンに設定する画像は30×30の透過画像
        firstVC?.tabBarItem = UITabBarItem(
            title: "First", image: UIImage(named: "swift-tab"), tag: 1)
        // NavigationControllerのrootにfirstVCを設定
        let firstNavigationController = UINavigationController(
            rootViewController: firstVC!)
        viewControllers.append(firstNavigationController)

        // 2つ目のViewController
        let secondVC: SecondVC? = SecondVC()
        secondVC?.tabBarItem = UITabBarItem(
            tabBarSystemItem: UITabBarItem.SystemItem.downloads, tag: 2)
        let secondNavigationController = UINavigationController(
            rootViewController: secondVC!)
        viewControllers.append(secondNavigationController)

        // 3つ目のViewController
        let thirdVC: ThirdVC? = ThirdVC()
        thirdVC?.tabBarItem = UITabBarItem(
            tabBarSystemItem: UITabBarItem.SystemItem.history, tag: 3)
        let thirdNavigationController = UINavigationController(
            rootViewController: thirdVC!)
        viewControllers.append(thirdNavigationController)

        // TabBarControllerにViewControllerの配列を設定
        tabBarController = UITabBarController()
        tabBarController?.setViewControllers(
            viewControllers, animated: false)
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

