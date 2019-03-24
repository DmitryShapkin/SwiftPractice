//
//  AppDelegate.swift
//  UICollectionView-Ray-Wenderlich-Tutorial
//
//  Created by Dmitry Shapkin on 23/03/2019.
//  Copyright © 2019 Dmitry Shapkin. All rights reserved.
//


import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    var window: UIWindow?
    
    let themeColor = UIColor(red: 0.01, green: 0.41, blue: 0.22, alpha: 1.0)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
       window?.tintColor = themeColor
        return true
    }
}

