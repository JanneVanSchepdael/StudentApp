//
//  DetailViewController.swift
//  StudentApp
//
//  Created by Atlas on 09/07/2021.
//

import UIKit

class EventDetailViewController: UITableViewController {
    private var event:Event?
    private var dataSource: UITableViewDataSource?
    
    func configure(with event: Event){
        self.event = event
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let event = event else{
            fatalError("No event found")
        }
        
        dataSource = EventDetailDataSource(event: event)
        tableView.dataSource = dataSource
        tableView.reloadData()
    }

}
