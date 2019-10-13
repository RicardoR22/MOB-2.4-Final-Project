//
//  MainMenuView.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/2/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class MainMenuView: UIView {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    func setupView() {
        backgroundColor = UIColor(named: "BackgroundColor")
        setupSubViews()
        setViewContraints()
    }
    
    func setupSubViews() {
        addSubview(welcomeLabel)
        addSubview(createSessionButton)
        addSubview(previousSessionButton)
    }
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "100ReactLogo")
        
        return imageView
        
    }()
    
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "TextColor")
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.text =  "Welcome User"
        label.textAlignment = .center
        
        
        return label
        
    }()
    
    let createSessionButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "ButtonColor")
        let buttonText = NSMutableAttributedString(attributedString: NSAttributedString(string: "Create a new session", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor(named: "BackgroundColor")!]))
        button.setAttributedTitle(buttonText, for: .normal)
        
        return button
    }()
    
    let previousSessionButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "ButtonColor")
        let buttonText = NSMutableAttributedString(attributedString: NSAttributedString(string: "Previous Sessions", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor(named: "BackgroundColor")!]))
        button.setAttributedTitle(buttonText, for: .normal)
        
        return button
    }()
    
    
}


