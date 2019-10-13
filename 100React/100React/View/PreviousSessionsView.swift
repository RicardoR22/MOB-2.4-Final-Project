//
//  PreviousSessionsView.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/12/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit


class PreviousSessionsView: UIView {
    
    override  init(frame: CGRect) {
        super .init(frame: frame)
            setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        setupSubViews()
        setViewConstraints()
    }
    
    func setupSubViews() {
        addSubview(tableView)
    }
    

    let tableView: UITableView = {
        let tableview = UITableView()
        let title = UILabel()
        title.text = "test"
        
        tableview.tableHeaderView = title
        return tableview
    }()
    
    

    
    
}
