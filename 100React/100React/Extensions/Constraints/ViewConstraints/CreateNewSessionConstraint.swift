//
//  CreateNewSessionConstraint.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/3/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import UIKit

extension CreateNewSessionView  {

func setViewContraints() {

    logoImageView.translatesAutoresizingMaskIntoConstraints = false
           logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0).isActive =  true
           logoImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
           logoImageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.4).isActive = true
           logoImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.2).isActive  =  true
           logoImageView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor) .isActive = true
    
    currentViewLabel.translatesAutoresizingMaskIntoConstraints = false
    currentViewLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 100).isActive = true
    currentViewLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
    
    individualSessionButton.translatesAutoresizingMaskIntoConstraints = false
    individualSessionButton.topAnchor.constraint(equalTo: currentViewLabel.bottomAnchor, constant: 100).isActive = true
    individualSessionButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
    
    groupSessionButton.translatesAutoresizingMaskIntoConstraints = false
    groupSessionButton.topAnchor.constraint(equalTo: individualSessionButton.bottomAnchor, constant: 100).isActive = true
    groupSessionButton.centerXAnchor.constraint(equalTo:
        safeAreaLayoutGuide.centerXAnchor).isActive = true
    
    
}

}
