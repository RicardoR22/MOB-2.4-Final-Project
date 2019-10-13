//
//  IndividualSessionController.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/7/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class IndividualSessionController: UIViewController {
    let viewModel = CreateSessionViewModel()
    var individualSessionView: IndividualSessionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    
    func setup() {
        setupView()
        setupNav()
        addButtonTarget()
    }
    
    func setupNav() {
        navigationItem.title = "New Session"
        
        let logo = UIImage(named: "100ReactLogo")?.withRenderingMode(.alwaysOriginal)
        let logoBtn = UIButton(type: .system)
        logoBtn.isUserInteractionEnabled = false
        logoBtn.setImage(logo, for: .normal)
        logoBtn.widthAnchor.constraint(equalToConstant: 50).isActive = true
        logoBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true

        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: logoBtn)
    }
    
    func setupView() {
        let SessionView = IndividualSessionView(frame: self.view.frame)
        self.individualSessionView = SessionView
        self.view.addSubview(individualSessionView)
    }
    
      func addButtonTarget() {
           individualSessionView.createButton.addTarget(self, action: #selector(createTapped), for: .touchUpInside)
       }
       
       @objc func createTapped() {
           let title = individualSessionView.sessionTitleField.text!
           let taskOne = individualSessionView.taskOneField.text!
           let taskTwo = individualSessionView.taskTwoField.text!
           let taskThree = individualSessionView.taskThreeField.text!
           let taskFour = individualSessionView.taskFourField.text!
        
           DispatchQueue.main.async {
            self.viewModel.createPomodoro(title: title, taskOne: taskOne, taskTwo: taskTwo, taskThree: taskThree, taskFour: taskFour)
            { pomodoroID in
                DispatchQueue.main.async {
                    let gameVC = PomodoroGameViewController()
                    gameVC.pomodoroID = pomodoroID
                    self.present(gameVC, animated: true)
                }
            }
               
           }
    
       }
    
    
}



