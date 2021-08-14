//
//  NotificationListViewController.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 13/08/2021.
//

import UIKit

class NotificationListViewController: UITableViewController{
    
    private var notificationListDataSource: NotificationListDataSource?
    var notifications = [Notification]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.notifications = Notification.testData
        
        // Set Datasource of tableview
        notificationListDataSource = NotificationListDataSource(notifications)
        tableView.dataSource = notificationListDataSource
        
        // Refresh tableview
        tableView.reloadData()
        
        // Set Delegate of tableview
        tableView.delegate = self
    }
}
