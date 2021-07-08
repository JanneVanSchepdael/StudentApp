//
//  EventTableViewCell.swift
//  StudentApp
//
//  Created by Atlas on 08/07/2021.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    
    @IBOutlet weak var groupImageView: UIImageView!
    
    @IBOutlet weak var groupLabel: UILabel!
    
    @IBOutlet weak var userLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var interestedLabel: UILabel!
    
    var event: Event?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(_ e:Event){
        let df = DateFormatter()
        df.dateFormat = "MMM d, h:mm a"

        self.event = e

        guard self.event != nil else { return }
        
        // Set elements
        // TODO: self.groupImageView.image = event?.image
        self.groupLabel = event?.group
        self.userLabel = event?.user
        self.titleLabel.text = event?.title
        self.dateLabel = df.string(from: event?.startDate) //TO DO: change this later
        self.interestedLabel = "Interested - \(event?.interested)"
    }

}
