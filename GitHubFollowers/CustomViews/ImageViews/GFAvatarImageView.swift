//
//  GFAvatarImageView.swift
//  GitHubFollowers
//
//  Created by Fatih Kilit on 1.08.2022.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let cache = NetworkingManager.shared.cache
    let placeHolderImage = Images.placeholder

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeHolderImage
    }
    
    func downloadImage(urlString: String) {
        NetworkingManager.shared.downloadImage(urlString: urlString) { [weak self] image in
            guard let self = self else { return }
            DispatchQueue.main.async { self.image = image }
        }
    }
}
