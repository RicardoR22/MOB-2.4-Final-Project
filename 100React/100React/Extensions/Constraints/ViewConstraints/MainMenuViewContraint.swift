//
//  MainMenuViewContraint.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/2/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import UIKit

extension MainMenuView {
    
    func setViewContraints() {
        
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints  = false
        welcomeLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        welcomeLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        createSessionButton.translatesAutoresizingMaskIntoConstraints =  false
        createSessionButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 100).isActive = true
        createSessionButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        createSessionButton.leftAnchor.constraint(equalTo: welcomeLabel.leftAnchor).isActive = true
        createSessionButton.rightAnchor.constraint(equalTo: welcomeLabel.rightAnchor).isActive = true
        createSessionButton.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.075).isActive = true
        
        previousSessionButton.translatesAutoresizingMaskIntoConstraints = false
        previousSessionButton.topAnchor.constraint(equalTo: createSessionButton.bottomAnchor, constant: 100).isActive = true
        previousSessionButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        previousSessionButton.leftAnchor.constraint(equalTo: welcomeLabel.leftAnchor).isActive = true
        previousSessionButton.rightAnchor.constraint(equalTo: welcomeLabel.rightAnchor).isActive = true
        previousSessionButton.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.075).isActive = true
        
        
        
    }
    
    
    
    
}

