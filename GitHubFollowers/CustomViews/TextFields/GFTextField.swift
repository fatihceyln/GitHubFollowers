//
//  GFTextField.swift
//  GitHubFollowers
//
//  Created by Fatih Kilit on 31.07.2022.
//

import UIKit

class GFTextField: UITextField {

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
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor = UIColor.label
        tintColor = UIColor.label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        backgroundColor = UIColor.tertiarySystemBackground
        autocorrectionType = .no
//        self.keyboardType = .webSearch
        returnKeyType = .go
        clearButtonMode = .whileEditing
        
        placeholder = "Enter a username"
    }
}
