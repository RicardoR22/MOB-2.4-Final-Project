//
//  CreateNewSessionView.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/3/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import  UIKit

class CreateNewSessionView: UIView {

    override  init(frame: CGRect) {
        super .init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
          backgroundColor = #colorLiteral(red: 0.8039215686, green: 0.8980392157, blue:0.9254901961, alpha: 1)
          setupSubViews()
          setViewContraints()
      }
      
      func setupSubViews() {
          addSubview(logoImageView)
          addSubview(currentViewLabel)
          addSubview(individualSessionButton)
          addSubview(groupSessionButton)
      }

    let logoImageView: UIImageView = {
        let  imageView = UIImageView()
        imageView.image = UIImage(named: "100ReactLogo")

        return imageView
    }()
    
    let currentViewLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.font  = UIFont(name: "AktivGrotesk", size: 25)
        label.text =  "Choose a session"
        label.textAlignment = .center


        return label

    }()

    let individualSessionButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        let buttonText = NSMutableAttributedString(attributedString: NSAttributedString(string: "Individual Session", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor.systemBlue]))
        button.setAttributedTitle(buttonText, for: .normal)

        return button
    }()
    
    let groupSessionButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .clear
        let buttonText = NSMutableAttributedString(attributedString: NSAttributedString(string: "Group Session", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor.systemBlue]))
        button.setAttributedTitle(buttonText, for: .normal)

        return button
    }()

}
