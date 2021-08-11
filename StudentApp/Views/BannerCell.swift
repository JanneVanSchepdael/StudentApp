//
//  BannerCell.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 10/08/2021.
//

import UIKit

class BannerCell: UITableViewCell {

    
    @IBOutlet weak var imageField: UIImageView!
    
    func configure(imageUrl: String?){
        let image: UIImage = UIImage(named: "profile")!
        imageField.image = image
    }

}
