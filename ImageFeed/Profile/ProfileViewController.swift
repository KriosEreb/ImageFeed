//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Артем Бобриков on 23.07.2026.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var Avatar: UIImageView!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Login: UILabel!
    @IBOutlet weak var Description: UILabel!
    
    
    @IBOutlet weak var Logout: UIButton!
    
    @IBAction private func didTapLogoutButton(_ sender: UIButton) {
    }
}

