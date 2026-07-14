//
//  ImagesListCell.swift
//  ImageFeed
//
//  Created by Артем Бобриков on 14.07.2026.
//


import UIKit

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier: String = "ImagesListCell"
    
    @IBOutlet private weak var cellImage: UIImageView!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var gradientView: UIView!
    @IBOutlet private weak var likeButton: UIButton!

    private let gradientLayer = CAGradientLayer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let ypBlack = UIColor(named: "YP Black") ?? UIColor(red: 26 / 255, green: 27 / 255, blue: 34 / 255, alpha: 1)

        gradientView.backgroundColor = .clear
        gradientView.layer.cornerRadius = 16
        gradientView.layer.maskedCorners = [
            .layerMinXMaxYCorner,
            .layerMaxXMaxYCorner
        ]
        gradientView.layer.masksToBounds = true
        
        gradientLayer.colors = [
            ypBlack.withAlphaComponent(0).cgColor,
            ypBlack.withAlphaComponent(0.2).cgColor
        ]
        gradientLayer.locations = [0.0, 0.5393]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        
        gradientView.layer.addSublayer(gradientLayer)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        gradientLayer.frame = gradientView.bounds
    }

    func configure(with image: UIImage, date: String, isLiked: Bool) {
        cellImage.image = image
        dateLabel.text = date

        let likeImageName = isLiked ? "Active" : "No Active"
        likeButton.setImage(UIImage(named: likeImageName), for: .normal)
    }
}
