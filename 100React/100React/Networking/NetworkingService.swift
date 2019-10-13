//
//  NetworkingService.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/6/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation

class NetworkingService {
    
    var loginSuccessful = false
    
    
    func login(params: Dictionary<String, Any>, completion: @escaping ([String: Any])->()) {
        
        
        // prepare json data
        
        let jsonData = try? JSONSerialization.data(withJSONObject: params)
        print(params)
        
        // create post request
        let url = URL(string: "https://100react.com/profile/api/loginAPI/")!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")  // the request is JSON
        request.httpMethod = "POST"
        
        // insert json data to the request
        request.httpBody = jsonData
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                self.loginSuccessful = false
                return
            }
            
            if let httpResponse = response as? HTTPURLResponse {
                print("Status: \(httpResponse.statusCode)")
            }
            
            // Validate response data is in expected format
            guard let mime = response?.mimeType, mime == "application/json" else {
                print("Wrong MIME type!")
                self.loginSuccessful = false
                return
            }
            
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])as? [String: Any]
            
            if let responseJSON = responseJSON {

                print(responseJSON as Any)
                self.loginSuccessful = true
                completion(responseJSON)
            }else {
                print("No Response")
            }
        }
        task.resume()
    }
    
    
    
    func createPomodoro(params: Dictionary<String, Any>, completion: @escaping ([String: Any])->()) {
            
            
            // prepare json data
            
            let jsonData = try? JSONSerialization.data(withJSONObject: params)
            print(params)
            
            // create post request
            let url = URL(string: "https://100react.com/pomodoro/api/pomodoroAPI/")!
            var request = URLRequest(url: url)
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")  // the request is JSON
            request.httpMethod = "POST"
            
            // insert json data to the request
            request.httpBody = jsonData
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: request) { data, response, error in
                guard let data = data, error == nil else {
                    print(error?.localizedDescription ?? "No data")
                    return
                }
                
                if let httpResponse = response as? HTTPURLResponse {
                    print("Status: \(httpResponse.statusCode)")
                }
                
                // Validate response data is in expected format
                guard let mime = response?.mimeType, mime == "application/json" else {
                    print("Wrong MIME type!")
                    return
                }
                
                let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])as? [String: Any]
                

                if let responseJSON = responseJSON {
                    print(responseJSON as Any)
                    completion(responseJSON)
                }else {
                    print("No Response")
                }
            }
            task.resume()
    }
    
    
    func getPreviousSessions(userID: Int, completion: @escaping ([[String: Any]])->()) {
               
               
               
               // create request
               let url = URL(string: "https://100react.com/pomodoro/api/user/\(userID)")!
               let request = URLRequest(url: url)
               let session = URLSession(configuration: .default)
               
               let task = session.dataTask(with: request) { data, response, error in
                   guard let data = data, error == nil else {
                       print(error?.localizedDescription ?? "No data")
                       return
                   }
                   
                   if let httpResponse = response as? HTTPURLResponse {
                       print("Status: \(httpResponse.statusCode)")
                   }
                   
                   // Validate response data is in expected format
                   guard let mime = response?.mimeType, mime == "application/json" else {
                       print("Wrong MIME type!")
                       return
                   }
                   
                   let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])as? [[String: Any]]
                   

                   if let responseJSON = responseJSON {
                       print(responseJSON as Any)
                       completion(responseJSON)
                   }else {
                       print("No Response")
                   }
               }
               task.resume()
       }

}
