//
//  EventInfoCell.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 10/08/2021.
//

import UIKit

class EventInfoCell: UITableViewCell {

    
    @IBOutlet weak var eventNameField: UILabel!
    @IBOutlet weak var eventLocationField: UILabel!
    
    @IBOutlet weak var goingButton: UIButton!
    @IBOutlet weak var interestedButton: UIButton!
    
    @IBOutlet weak var eventDateField: UILabel!
    @IBOutlet weak var eventGoingField: UILabel!
    @IBOutlet weak var eventGroupField: UILabel!
    @IBOutlet weak var eventFullLocationField: UILabel!
    
    func configure(eventName: String, eventLocation: String?, eventStart: Date,
                   eventEnd: Date, eventGoing: Int, eventGroup: String?){
        let df = DateFormatter()
        df.dateFormat = "MMM d yy, h:mm a"
        
        eventNameField.text = eventName
        eventLocationField.text = eventLocation
        eventDateField.text = df.string(from: eventStart) + "-" + df.string(from: eventEnd)
        eventGoingField.text = String(eventGoing) + " going or interested"
        eventGroupField.text = eventGroup
        eventFullLocationField.text = eventLocation
    }
}
