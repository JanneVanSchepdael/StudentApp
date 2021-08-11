//
//  EventDescriptionCell.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 10/08/2021.
//

import UIKit

class EventDescriptionCell: UITableViewCell {

    
    @IBOutlet weak var eventDescriptionField: UILabel!
    
    func configure(description: String?){
        eventDescriptionField.text = description
    }
    
}
