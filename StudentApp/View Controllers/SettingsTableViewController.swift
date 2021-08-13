//
//  SettingsTableViewController.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 13/08/2021.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    private var settingsDataSource: SettingsDataSource = SettingsDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set datasource of tableview
        tableView.dataSource = settingsDataSource
        
        // Set Delegate of tableview
        tableView.delegate = self
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        (view as! UITableViewHeaderFooterView).contentView.backgroundColor = UIColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1.0)
        (view as! UITableViewHeaderFooterView).textLabel?.textColor = .darkGray
        (view as! UITableViewHeaderFooterView).textLabel?.font = .systemFont(ofSize: 16)
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 36
    }
}
