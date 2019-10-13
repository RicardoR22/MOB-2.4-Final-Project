//
//  PreviousSessionsViewController.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/12/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class PreviousSessionsViewController: UIViewController {
    
    var previousSessionsView: PreviousSessionsView!
    let viewModel = PreviousSessionsViewModel()
    let dataSource = PreviousSessionsDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        dataSource.viewModel = viewModel
        viewModel.populatePreviousSessionsArray{
            self.dataSource.rowCount = self.viewModel.previousSessions.count
     
            DispatchQueue.main.async {
                self.previousSessionsView.tableView.dataSource = self.dataSource
                self.previousSessionsView.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
                self.previousSessionsView.tableView.reloadData()

            }

        }

        
    }
    
    func setup() {
        setupView()
        setupNav()
    }
    
    func setupNav() {
        navigationItem.title = "Previous Sessions"
        
        let logo = UIImage(named: "100ReactLogo")?.withRenderingMode(.alwaysOriginal)
        let logoBtn = UIButton(type: .system)
        logoBtn.isUserInteractionEnabled = false
        logoBtn.setImage(logo, for: .normal)
        logoBtn.widthAnchor.constraint(equalToConstant: 50).isActive = true
        logoBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true

        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: logoBtn)
    }
    
    func setupView() {
        let SessionView = PreviousSessionsView(frame: self.view.frame)
        self.previousSessionsView = SessionView
        self.view.addSubview(previousSessionsView)
    }
    
    
}
