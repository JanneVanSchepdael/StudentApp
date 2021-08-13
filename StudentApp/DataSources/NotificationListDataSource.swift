//
//  NotificationListDataSource.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 13/08/2021.
//

import UIKit

class NotificationListDataSource: NSObject {
    private var notifications = [Notification]()
    
    init(_ notifications: [Notification]){
        self.notifications = notifications
        super.init()
    }
}


extension NotificationListDataSource: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:
            "NotificationCell", for: indexPath) as! NotificationCell
        
        //Configure cell with data
        let notification = self.notifications[indexPath.row]
        
        cell.configure(notification)

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //TO DO
    }
}
