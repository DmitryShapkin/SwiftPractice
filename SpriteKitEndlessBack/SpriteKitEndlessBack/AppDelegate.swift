//
//  AppDelegate.swift
//  SpriteKitEndlessBack
//
//  Created by Dmitry Shapkin on 16.10.2020.
//  Copyright © 2020 ShapkinDev. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        window = UIWindow(frame: UIScreen.main.bounds)
        let homeViewController = GameViewController()
        window?.backgroundColor = .red
        window!.rootViewController = homeViewController
        window!.makeKeyAndVisible()
        return true
    }
}

