//
//  AppDelegate.swift
//  RecipePizza
//
//  Created by mac on 3/6/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    UINavigationBar.appearance().isTranslucent = false
//        UINavigationBar.appearance().backgroundColor = #colorLiteral(red: 0.2098652068, green: 0.6215688675, blue: 0.9558613579, alpha: 1)//#colorLiteral(red: 1, green: 0.06543179506, blue: 0, alpha: 1)
//        UINavigationBar.appearance().tintColor = #colorLiteral(red: 0.2098652068, green: 0.6215688675, blue: 0.9558613579, alpha: 1)//#colorLiteral(red: 1, green: 0.06543179506, blue: 0, alpha: 1)
   UINavigationBar.appearance().barTintColor = #colorLiteral(red: 0.0430477038, green: 0.1253411174, blue: 0.1920496821, alpha: 1)
      
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = ContainerViewController()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

