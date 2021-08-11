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
        let image: UIImage = UIImage(named: "profile")!
        groupLogo.image = image
        
        groupNameField.text = groupName
        groupFollowersField.text = "\(groupFollowers) followers"
    }
}
