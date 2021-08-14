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
        
        // Set image & make it round
        notificationImage.image = UIImage(named: n.user.imageUrl)
        notificationImage.layer.borderWidth = 1.0
        notificationImage.layer.masksToBounds = false
        notificationImage.layer.borderColor = UIColor.white.cgColor
        notificationImage.layer.cornerRadius = notificationImage.frame.size.width / 2
        notificationImage.clipsToBounds = true
        
        
        notificationLabel.text = "\(n.user.name) has invited you to join the event \(n.event.title). Let him know if you're coming!"
        dateLabel.text = df.string(from: n.date)
    }
    
}
