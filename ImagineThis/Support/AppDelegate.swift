//
//  AppDelegate.swift
//  ImagineThis
//
//  Created by Aleksey on 5/6/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		
		window = UIWindow(frame: UIScreen.main.bounds)
		window?.makeKeyAndVisible()
		
		let navigationController = UINavigationController(rootViewController: SelectionVC())
		navigationController.setNavigationBarHidden(true, animated: true)
		window?.rootViewController = navigationController
		
		return true
	}
}

