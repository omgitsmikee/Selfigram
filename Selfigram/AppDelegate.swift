//
//  AppDelegate.swift
//  Selfigram
//
//  Created by Michael Mak on 2016-08-25.
//  Copyright © 2016 Michael Mak. All rights reserved.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // Initialize Parse.
        // Replace XXXX with the App ID and Client ID that Parse gives you
        Post.registerSubclass()
        Activity.registerSubclass()
        
        // MikesAwesome Parse database keys
//        Parse.setApplicationId("0S7t0laoe3TDIYxZgiTZ10JvZYs3YTr6leARYMRl",
//                               clientKey: "MHtYqAJVoMDBrDo89hKTgNnPleJhNtQwv5eCsbxR")

        // Lighthouse common use Parse API keys
        Parse.setApplicationId("5CDeHX2xNhW11QZXr9AvtBbEQY0lft4jpUuMFt9g",
                               clientKey: "SO1UFKR9k8RsLx1FsXzBjyI6IjsKxm2K0jcm48dG")

        
        
        let user = PFUser()
        let username = "Michael_M"
        let password = "Mak"
        user.username = username
        user.password = password
        user.signUpInBackgroundWithBlock { (success, error) -> Void in
            if success {
                print("successfully signuped a user")
            }
            else {
                PFUser.logInWithUsernameInBackground(username, password: password, block: { (user, error) -> Void in
                    if let user = user {
                        print("successfully logged in \(user)")
                    }
                })
            }
        }
        
        return true
    
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

