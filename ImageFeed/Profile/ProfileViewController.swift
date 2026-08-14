//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Артем Бобриков on 23.07.2026.
//

import UIKit

final class ProfileViewController: UIViewController {
    private let avatarImageView = UIImageView()
    private let nameLabel = UILabel()
    private let loginLabel = UILabel()
    private let descriptionLabel = UILabel()
    private let logoutButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupAvatarImageView()
        setupNameLabel()
        setupLoginLabel()
        setupDescriptionLabel()
        setupLogoutButton()
        setupConstraints()
    }

    private func setupView() {
        view.backgroundColor = UIColor(named: "YP Black")
    }

    private func setupAvatarImageView() {
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.image = UIImage(named: "Photo")
        avatarImageView.layer.cornerRadius = 35
        avatarImageView.layer.masksToBounds = true
        avatarImageView.contentMode = .scaleAspectFit
        
        view.addSubview(avatarImageView)
    }

    private func setupNameLabel() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = "Екатерина Новикова"
        nameLabel.font = .systemFont(ofSize: 18, weight: .bold)
        nameLabel.textColor = UIColor(named: "YP White")
        
        view.addSubview(nameLabel)
    }

    private func setupLoginLabel() {
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.text = "@ekaterina_nov"
        loginLabel.font = .systemFont(ofSize: 13)
        loginLabel.textColor = UIColor(named: "YP Gray")
        
        view.addSubview(loginLabel)
    }

    private func setupDescriptionLabel() {
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.text = "Hello, world!"
        descriptionLabel.font = .systemFont(ofSize: 13)
        descriptionLabel.textColor = UIColor(named: "YP White")
        
        view.addSubview(descriptionLabel)
    }

    private func setupLogoutButton() {
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        logoutButton.setImage(UIImage(named: "Exit"), for: .normal)
        logoutButton.tintColor = UIColor(named: "YP Red")
        
        logoutButton.addTarget(
            self,
            action: #selector(didTapLogoutButton),
            for: .touchUpInside
        )
        
        view.addSubview(logoutButton)
    }
    
    @objc private func didTapLogoutButton() {
        
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            avatarImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            avatarImageView.widthAnchor.constraint(equalToConstant: 70),
            avatarImageView.heightAnchor.constraint(equalToConstant: 70),
            
            nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
            nameLabel.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -32),
            
            loginLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            loginLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
            loginLabel.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -32),
            
            descriptionLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 8),
            descriptionLabel.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -32),
            
            logoutButton.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor),
            logoutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            logoutButton.widthAnchor.constraint(equalToConstant: 44),
            logoutButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
}
