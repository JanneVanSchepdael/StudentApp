//
//  EventTableViewCell.swift
//  StudentApp
//
//  Created by Atlas on 08/07/2021.
//

import UIKit

class EventListCell: UITableViewCell {
    
    @IBOutlet weak var groupImageView: UIImageView!
    
    @IBOutlet weak var groupLabel: UILabel!
    
    @IBOutlet weak var userLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var interestedLabel: UILabel!
    
    var event: Event?
    
    func configure(_ e:Event){
        let df = DateFormatter()
        df.dateFormat = "MMM d, h:mm a"

        self.event = e

        guard self.event != nil else { return }
        
        // Set elements
        self.groupImageView.image = UIImage(named: "profile")
        self.groupLabel.text = event?.group.name
        self.userLabel.text = event?.user
        self.titleLabel.text = event?.title
        self.dateLabel.text = df.string(from: event!.startDate) //TO DO: change this later
        self.interestedLabel.text = "Interested - \(event?.interested ?? 0)"
    }
}
