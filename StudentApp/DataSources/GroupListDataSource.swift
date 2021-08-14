//
//  GroupListDataSource.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 14/08/2021.
//

import UIKit

class GroupListDataSource: NSObject {
    private var groups = [Group]()
    
    init(groups: [Group]){
        self.groups = groups
        super.init()
    }
}

extension GroupListDataSource: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return groups.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupCell", for: indexPath) as! GroupCell
        
        let group = groups[indexPath.row]
        
        cell.configure(group)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Header", for: indexPath)
            return view
        }
        fatalError("Unexpected kind")
    }
}
