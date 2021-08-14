//
//  NotificationCell.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 13/08/2021.
//

import UIKit

class NotificationCell: UITableViewCell {

    
    @IBOutlet weak var notificationImage: UIImageView!
    
    @IBOutlet weak var notificationLabel: UILabel!
 
    @IBOutlet weak var dateLabel: UILabel!
    
    func configure(_ n: Notification){
        let df = DateFormatter()
        df.dateFormat = "dd MMM YYYY, hh:mm"
            
        notificationImage.image = UIImage(named: n.imageUrl)
        notificationLabel.text = n.notification
        dateLabel.text = df.string(from: n.date)
    }
    
}
