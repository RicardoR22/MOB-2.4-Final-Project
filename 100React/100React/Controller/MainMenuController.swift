//
//  MainMenuController.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/3/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit


class MainMenuViewController: UIViewController {
    var menuView: MainMenuView!
    let viewModel = MainMenuViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: View setup
    
    func setup() {
        setupView()
        updateWelcomeLabel()
        setupNav()
        addButtonTarget()
    }
    
    func setupNav() {
        navigationItem.title = "100React"
        
        let logo = UIImage(named: "100ReactLogo")?.withRenderingMode(.alwaysOriginal)
        let logoBtn = UIButton(type: .system)
        logoBtn.isUserInteractionEnabled = false
        logoBtn.setImage(logo, for: .normal)
        logoBtn.widthAnchor.constraint(equalToConstant: 50).isActive = true
        logoBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true

        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: logoBtn)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(logoutTapped))
        navigationItem.rightBarButtonItem?.tintColor = UIColor(named: "AlternateGrey")
    }
    
    func updateWelcomeLabel() {
        let user = viewModel.updateWelcomeLabel()
        menuView.welcomeLabel.text = "Welcome \(user)"
    }
    
    @objc func logoutTapped() {
        viewModel.logout()
    }
    
    
    func setupView() {
        let mainView = MainMenuView(frame: self.view.frame)
        self.menuView = mainView
        self.view.addSubview(menuView)
    }
    
    func addButtonTarget() {
        menuView.createSessionButton.addTarget(self, action: #selector(newSessionTapped), for: .touchUpInside)
        menuView.previousSessionButton.addTarget(self, action: #selector(previousSessionTapped), for: .touchUpInside)
    }
    
    @objc func newSessionTapped() {
        let newSessionVC = IndividualSessionController()
        navigationController?.pushViewController(newSessionVC, animated: true)
    }
    
    @objc func previousSessionTapped() {
        let previousSessionVC = PreviousSessionsViewController()
        navigationController?.pushViewController(previousSessionVC, animated: true)
    }
    
    
}
