//
//  PomodoroGameViewController.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/9/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit
import WebKit


class PomodoroGameViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    var pomodoroID: Int!
    
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://100react.com/pomodoro/new/single/\(pomodoroID!)")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    
}
