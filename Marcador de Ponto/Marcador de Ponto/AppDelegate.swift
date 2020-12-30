//
//  AppDelegate.swift
//  Marcador de Ponto
//
//  Created by Caio on 30/12/20.
//

import UIKit
import CoreData
import IQKeyboardManagerSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let controller = LoginVC()
        window.rootViewController = controller
        self.window = window
        window.makeKeyAndVisible()
        return true
    }
}

