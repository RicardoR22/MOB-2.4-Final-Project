//
//  CreateSessionViewModel.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/9/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit
import KeychainSwift

class CreateSessionViewModel {
    let network = NetworkingService()
    let defaults = UserDefaults.standard
    
    
    func createPomodoro(title: String, taskOne: String, taskTwo: String, taskThree: String, taskFour: String, completion: @escaping (Int)->()) {
        let title = title
        let taskOne = taskOne
        let taskTwo = taskTwo
        let taskThree = taskThree
        let taskFour = taskFour
        let userID = defaults.integer(forKey: "UserID")
        var pomodoroID: Int!
        
        print("Got UserID: \(userID)")
        network.createPomodoro(params: ["title": title, "task_one": taskOne, "task_two": taskTwo, "task_three": taskThree, "task_four": taskFour, "player": userID], completion: { response in
            
            print(response)
            pomodoroID = response["id"] as? Int
            completion(pomodoroID)
        })
        
    }

}
