//
//  IndividualSessionView.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/7/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit
// Star

class IndividualSessionView: UIView {
    
    override  init(frame: CGRect) {
        super .init(frame: frame)
            setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupSubViews()
        setViewConstraints()
    }
    
    func setupSubViews() {
        addSubview(sessionTitleField)
        addSubview(taskOneField)
        addSubview(taskTwoField)
        addSubview(taskThreeField)
        addSubview(taskFourField)
        addSubview(createButton)
        addSubview(titleFieldLabel)
        addSubview(taskOneLabel)
        addSubview(taskTwoLabel)
        addSubview(taskThreeLabel)
        addSubview(taskFourLabel)
    }
    

    
    
    let titleFieldLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "TextColor")
        label.font = UIFont(name: "AktivGrotesk", size: 15)
        label.text  = "Session Title"
        label.textAlignment = .center
        
        return label
    }()
    
    let taskOneLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "TextColor")
        label.font = UIFont(name: "AktivGrotesk", size: 15)
        label.text = "Task One"
        label.textAlignment = .center
        
        return label
    }()
    
    let taskTwoLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "TextColor")
        label.font = UIFont(name: "AktivGrotesk", size: 15)
        label.text = "Task Two"
        label.textAlignment = .center
        
        return label
    }()
    
    let taskThreeLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "TextColor")
        label.font = UIFont(name: "AktivGrotesk", size: 15)
        label.text = "Task Three"
        label.textAlignment = .center
        
        return label
    }()
    
    let taskFourLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "TextColor")
        label.font = UIFont(name: "AktivGrotesk", size: 15)
        label.text = "Task Four"
        label.textAlignment = .center
        
        return label
    }()
    
    let sessionTitleField: UITextField = {
        let textField = UITextField()
        textField.frame(forAlignmentRect: CGRect(x: 20, y: 100, width: 1100, height: 40))
        textField.placeholder = "Session Title"
        textField.font = UIFont(name: "AktivGrotesk", size: 25)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.backgroundColor = UIColor(named: "FieldColor")
        textField.textColor = UIColor(named: "TextColor")
        
        return textField
    }()
    
    
    
    let taskOneField: UITextField = {
        let textField = UITextField()
        textField.frame(forAlignmentRect: CGRect(x: 20, y: 100, width: 1100, height: 40))
        textField.placeholder = "Task One"
        textField.font = UIFont(name: "AktivGrotesk", size: 25)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.backgroundColor = UIColor(named: "FieldColor")
        textField.textColor = UIColor(named: "TextColor")
        
        return textField
    }()
    
    let taskTwoField: UITextField = {
        let textField = UITextField()
        textField.frame(forAlignmentRect: CGRect(x: 20, y: 100, width: 1100, height: 40))
        textField.placeholder = "Task Two"
        textField.font = UIFont(name: "AktivGrotesk", size: 25)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.backgroundColor = UIColor(named: "FieldColor")
        textField.textColor = UIColor(named: "TextColor")
        
        return textField
    }()
    
    let taskThreeField: UITextField = {
        let textField = UITextField()
        textField.frame(forAlignmentRect: CGRect(x: 20, y: 100, width: 1100, height: 40))
        textField.placeholder = "Task Three"
        textField.font = UIFont(name: "AktivGrotesk", size: 25)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.backgroundColor = UIColor(named: "FieldColor")
        textField.textColor = UIColor(named: "TextColor")
        
        return textField
    }()
    
    let taskFourField: UITextField = {
        let textField = UITextField()
        textField.frame(forAlignmentRect: CGRect(x: 20, y: 100, width: 1500, height: 40))
        textField.placeholder = "Task Four"
        textField.font = UIFont(name: "AktivGrotesk", size: 25)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.backgroundColor = UIColor(named: "FieldColor")
        textField.textColor = UIColor(named: "TextColor")
        
        
        return textField
    }()
    

    
    let createButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "ButtonColor")
        let buttonText = NSMutableAttributedString(attributedString: NSMutableAttributedString(string: "Create", attributes: [NSMutableAttributedString.Key.font:UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor(named: "BackgroundColor")]))
        button.setAttributedTitle(buttonText, for: .normal)
        
        return button
        
    }()
    
    
    

    
    
}


