//
//  NotificationListViewController.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 13/08/2021.
//

import UIKit

class NotificationListViewController: UITableViewController, NotificationDelegate {
    
    
    
    private var notificationListDataSource: NotificationListDataSource?
    private var notificationRepository: NotificationRepository = NotificationRepository();
    var notifications = [Notification]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set as delegate for itself
        notificationRepository.delegate = self
        notificationRepository.getNotificationsFromJSON()
        
        // Set Delegate of tableview
        tableView.delegate = self
    }
    
    func notificationsFetched(_ notifications: [Notification]) {
        self.notifications = notifications
        
        // Set Datasource of tableview
        notificationListDataSource = NotificationListDataSource(notifications)
        tableView.dataSource = notificationListDataSource
        
        // Refresh tableview
        tableView.reloadData()
    }
}
