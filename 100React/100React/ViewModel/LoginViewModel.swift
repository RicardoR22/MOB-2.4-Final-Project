//
//  LoginViewModel.swift
//  100React
//
//  Created by Ricardo Rodriguez on 9/30/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit
import KeychainSwift

class LoginViewModel {
    let network = NetworkingService()
    let keychain = KeychainSwift()
    let defaults = UserDefaults.standard
    
    func loginTapped(username: String, password: String) {
        let user = username
        let pass = password
        network.login(params: ["username": user, "password": pass], completion: { response in
            print("should print first")
            guard let token = response["token"] else { return }
            guard let user = response["username"] else { return }
            guard let userID = response["id"] else { return }
            
            self.keychain.set(token as! String, forKey: "Token")
            self.defaults.set(user, forKey: "User")
            self.defaults.set(true, forKey: "LoggedIn")
            self.defaults.set(userID as! Int, forKey: "UserID")
            
            print(self.defaults.integer(forKey: "UserID"))
            DispatchQueue.main.async {
                let nav = UINavigationController()
                nav.viewControllers = [MainMenuViewController()]
                UIApplication.shared.windows.first?.rootViewController = nav
            }
            
            
        })
    }
    
}
