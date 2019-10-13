//
//  CreateNewSessionController.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/6/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit


class CreateNewSessionController: UIViewController {
    var newSessionView: CreateNewSessionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: View setup
    
    func setup() {
        setupView()
    }
    
    
    
    func setupView() {
        let SessionView = CreateNewSessionView(frame: self.view.frame)
        self.newSessionView = SessionView
        self.view.addSubview(newSessionView)
    }
    
    
}
