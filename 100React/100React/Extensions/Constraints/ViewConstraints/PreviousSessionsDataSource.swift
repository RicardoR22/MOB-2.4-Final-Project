//
//  PreviousSessionsDataSource.swift
//  100React
//
//  Created by Ricardo Rodriguez on 10/12/19.
//  Copyright © 2019 Ricardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class PreviousSessionsDataSource: NSObject, UITableViewDataSource {
        
    var viewModel: PreviousSessionsViewModel?
    var rowCount: Int?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowCount!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue a reusable cell from the pool
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configure the cell...
     
        let task = viewModel!.previousSessions[indexPath.row]
        cell.textLabel?.text = task
        
        return cell
    }
    
    
    
}
