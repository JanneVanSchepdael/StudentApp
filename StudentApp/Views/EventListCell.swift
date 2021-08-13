//
//  EventTableViewCell.swift
//  StudentApp
//
//  Created by Atlas on 08/07/2021.
//

import UIKit

class EventListCell: UITableViewCell {
    
    
    @IBOutlet weak var groupImage: UIImageView!
    
    @IBOutlet weak var groupLabel: UILabel!
    
    @IBOutlet weak var userLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var interestedButton: UIButton!
    
    @IBOutlet weak var goingButton: UIButton!
    
    @IBAction func interestedButtonClicked(_ sender: Any) {
        if(interestedButton.imageView?.image == UIImage(systemName: "star")){
            interestedButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
            goingButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        } else{
            interestedButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
    }
    
    @IBAction func goingButtonClicked(_ sender: Any) {
        if(goingButton.imageView?.image == UIImage(systemName: "checkmark.square")){
            interestedButton.setImage(UIImage(systemName: "star"), for: .normal)
            goingButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        } else{
            goingButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        }
    }
    
    var event: Event?
    
    func configure(_ e:Event){
        let df = DateFormatter()
        df.dateFormat = "d/M h:mm"

        self.event = e

        guard self.event != nil else { return }
        
        // Set elements
        self.groupImage.image = UIImage(named: "profile")
        self.groupLabel.text = event!.group.name
        self.userLabel.text = "posted by \(event!.user)"
        self.titleLabel.text = event!.title
        self.dateLabel.text = df.string(from: event!.startDate) + " - " + df.string(from: event!.endDate)
        self.interestedButton.setImage(UIImage(systemName: "star"), for: .normal)
        self.goingButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
    }
}
