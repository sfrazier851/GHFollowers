//
//  GFTextField.swift
//  GHFollowers
//
//  Created by admin on 6/6/22.
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
        
        textColor = .label // black on light mode and white on dark mode
        tintColor = .label // (the blinking cursor)
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2) // dynamic type
        adjustsFontSizeToFitWidth = true // shrink font to fit in textfield
        minimumFontSize = 12
        
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        returnKeyType = .go
        clearButtonMode = .whileEditing
        
        placeholder = "Enter a username"
        
        autocapitalizationType = .none
    }
}
