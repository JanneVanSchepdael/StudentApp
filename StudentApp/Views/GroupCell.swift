//
//  GroupCell.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 14/08/2021.
//

import UIKit

class GroupCell: UICollectionViewCell {
    
    @IBOutlet weak var groupImage: UIImageView!
    @IBOutlet weak var groupName: UILabel!
    
    var group: Group?
    
    func configure(_ g:Group){
        self.group = g

        guard self.group != nil else { return }
        
        // Set elements
        self.groupImage.image = UIImage(named: self.group?.imageUrl ?? "profile")
        self.groupName.text = self.group?.name
    }
}
