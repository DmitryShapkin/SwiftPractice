//
//  AppDelegate.swift
//  ResponderChain
//
//  Created by Dmitry Shapkin on 22/02/2019.
//  Copyright © 2019 Dmitry Shapkin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("AppDelegate: touchesBegan")
    }


}

