//
//  AppDelegate.swift
//  UINavigationController
//
//  Created by junpei ono on 2018/09/09.
//  Copyright © 2018年 junpei ono. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var navigationController: UINavigationController?
    func application(_
        application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.makeKeyAndVisible()
        let viewController = ViewController()
        // navigationControllerをrootViewControllerに設定する
        navigationController =
            UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        self.window = window
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}
    func applicationDidEnterBackground(_ application: UIApplication) {}
    func applicationWillEnterForeground(_ application: UIApplication) {}
    func applicationDidBecomeActive(_ application: UIApplication) {}
    func applicationWillTerminate(_ application: UIApplication) {}
}

