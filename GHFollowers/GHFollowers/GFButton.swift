//
//  GFButton.swift
//  GHFollowers
//
//  Created by admin on 6/6/22.
//

import UIKit

class GFButton: UIButton {
    
    // b/c we are doing custom stuff, we have to override the super class (UIButton)
    // init
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    // init for storyboard based initialization
    // (when subclassing UIKit "UI" elements, you have to handle the
    // storyboard init case)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
