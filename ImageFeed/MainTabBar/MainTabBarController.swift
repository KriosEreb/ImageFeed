//
//  MainTabBarController.swift
//  ImageFeed
//
//  Created by Артем Бобриков on 03.08.2026.
//


import UIKit

final class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if #available(iOS 15.0, *) {
            tabBar.scrollEdgeAppearance = tabBar.standardAppearance
        }
    }
}


