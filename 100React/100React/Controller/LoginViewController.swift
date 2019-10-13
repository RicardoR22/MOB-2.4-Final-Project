//
//  LoginViewController.swift
//  100React
//
//  Created by Ricardo Rodriguez on 9/30/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit


class LoginViewController: UIViewController {
    var loginView: LoginView!
    let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: View setup
    
    func setup() {
        setupView()
        addButtonTarget()
    }
    
    
    
    func setupView() {
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        self.view.addSubview(loginView)
        
//        setRecipeDetailsViewConstraints()
    }
    
    func addButtonTarget() {
        loginView.loginButton.addTarget(self, action: #selector(loginTapped), for: .touchUpInside)
    }
    
    @objc func loginTapped() {
        let user = loginView.usernameField.text!
        let pass = loginView.passwordField.text!
        
        DispatchQueue.main.async {
            self.viewModel.loginTapped(username: user, password: pass)
            
        }
 
    }
    

    
    
}
