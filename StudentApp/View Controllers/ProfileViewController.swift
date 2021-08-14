//
//  ProfileViewController.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 13/08/2021.
//

import UIKit

class ProfileViewController: UIViewController, UICollectionViewDelegate{
    
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var functionLabel: UILabel!
    
    @IBOutlet weak var studyLabel: UILabel!
    
    @IBOutlet weak var editProfileButton: UIButton!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var groupListDatasource: GroupListDataSource?
    var groups: [Group] = [Group]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.groups = User.loggedUser.followedGroups
        
        collectionView.delegate = self
        
        groupListDatasource = GroupListDataSource(groups: self.groups)
        collectionView.dataSource = groupListDatasource
        
        configureItems()
    }
    
    private func configureItems(){
        // Profile button border
        editProfileButton.backgroundColor = .clear
        editProfileButton.layer.cornerRadius = 5
        editProfileButton.layer.borderWidth = 1
        editProfileButton.layer.borderColor = UIColor.black.cgColor
        
        // Profile image
        profileImage.image = UIImage(named: User.loggedUser.imageUrl)
        profileImage.layer.borderWidth = 1.0
        profileImage.layer.masksToBounds = false
        profileImage.layer.borderColor = UIColor.white.cgColor
        profileImage.layer.cornerRadius = profileImage.frame.size.width / 2
        profileImage.clipsToBounds = true
        
        // Labels
        nameLabel.text = User.loggedUser.name
        functionLabel.text = User.loggedUser.function
        studyLabel.text = User.loggedUser.study
    }
}
