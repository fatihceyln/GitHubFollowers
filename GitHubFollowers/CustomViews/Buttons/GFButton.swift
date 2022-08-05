//
//  GFButton.swift
//  GitHubFollowers
//
//  Created by Fatih Kilit on 31.07.2022.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(title: String, backgroundColor: UIColor) {
        self.init(frame: .zero)
        set(title: title, backgroundColor: backgroundColor)
    }
    
    func set(title: String, backgroundColor: UIColor) {
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
    }
    
    private func configure() {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.layer.cornerRadius = 10
        
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
    }
}
