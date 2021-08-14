//
//  EventGroupCell.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 10/08/2021.
//

import UIKit

class EventGroupCell: UITableViewCell {

    @IBOutlet weak var groupLogo: UIImageView!
    @IBOutlet weak var groupNameField: UILabel!
    
    @IBOutlet weak var groupFollowersField: UILabel!
    
    @IBOutlet weak var groupFollowButton: UIButton!
    
    func configure(imageUrl: String?, groupName: String?, groupFollowers: Int){
        groupLogo.image = UIImage(named: imageUrl ?? "profile")!
        
        groupNameField.text = groupName
        groupFollowersField.text = "\(groupFollowers) followers"
    }
}
