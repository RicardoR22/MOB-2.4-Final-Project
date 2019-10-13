//
//  MainMenuViewModel.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/7/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit
import KeychainSwift

class MainMenuViewModel {
    
    let keychain = KeychainSwift()
    let defaults = UserDefaults.standard
    
    func updateWelcomeLabel() -> String {
        return defaults.string(forKey: "User")!
    }
    
    func logout() {
        
        let loginVC = LoginViewController()
        UIApplication.shared.windows.first?.rootViewController = loginVC
        
        defaults.removeObject(forKey: "User")
        defaults.set(false, forKey: "LoggedIn")
        keychain.delete("Token")
        
        print("Logged Out Successfully")
        
    }
    
    
}
