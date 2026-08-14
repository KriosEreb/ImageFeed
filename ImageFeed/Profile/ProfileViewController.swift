//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Артем Бобриков on 23.07.2026.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var logoutButton: UIButton!
    
    @IBAction private func didTapLogoutButton(_ sender: UIButton) {
    }
}

