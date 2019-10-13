//
//  LoginView.swift
//  100React
//
//  Created by Ricardo Rodriguez on 9/30/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit


class LoginView: UIView {
    
    override init(frame: CGRect) {
          super.init(frame: frame)
          setupView()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 0.8039215686, green: 0.8980392157, blue: 0.9254901961, alpha: 1)
        setupSubViews()
        setViewConstraints()
    }
    
    func setupSubViews() {
        addSubview(backgroundImageView)
        addSubview(logoImageView)
        addSubview(baseImageView)
        addSubview(usernameField)
        addSubview(passwordField)
        addSubview(usernameFieldLabel)
        addSubview(passwordFieldLabel)
        addSubview(loginButton)
        
    }
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "100ReactLogo")
        
        return imageView
    }()
    
    let baseImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "BaseImage")
        imageView.alpha = 0.7
        
        return imageView
    }()
    
    let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        
        
        return imageView
    }()
    
    let usernameField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.backgroundColor = .white

        textField.layer.cornerRadius = 5
        textField.textColor = .black
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        
        return textField
    }()
    
    let usernameFieldLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = .black
        label.text = "Username"
        
        return label
    }()
    
    let passwordFieldLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = .black
        label.text = "Password"
        
        return label
    }()
    
    let passwordField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.backgroundColor = .white

        textField.layer.cornerRadius = 5
        textField.textColor = .black
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        let buttonText = NSMutableAttributedString(attributedString: NSAttributedString(string: "Login", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor.systemBlue]))
        button.setAttributedTitle(buttonText, for: .normal)
        
        return button
    }()
    
    

    
}
