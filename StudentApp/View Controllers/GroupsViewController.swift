//
//  GroupsViewController.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 13/08/2021.
//

import UIKit

class GroupsViewController: UICollectionViewController {
    
    var groups = [Group]()
    
    private var groupListDatasource: GroupListDataSource?


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.groups = Group.testData
        
        collectionView.delegate = self
        
        groupListDatasource = GroupListDataSource(groups: groups)
        collectionView.dataSource = groupListDatasource
    }
}
