//
//  SettingsDataSource.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 13/08/2021.
//

import UIKit

class SettingsDataSource: NSObject {
    enum SettingsSection: Int, CaseIterable{
        case account
        case preferences
        case notifications
        case logout
        
        var displayText: String {
            switch self {
                case .account:
                    return "Account"
                case .preferences:
                    return "Preferences"
                case .notifications:
                    return "Notifications"
                case .logout:
                    return " "
            }
        }

        var numRows: Int {
            switch self {
                case .account: return 3
                case .preferences, .notifications: return 2
                case .logout: return 1
            }
        }
        
        func cellIdentifier(for row: Int) -> String {
            switch self {
                case .account:
                    return ["ChangeEmail", "ChangePassword", "Help"][row]
                case .preferences:
                    return ["Privacy", "Language"][row]
                case .notifications:
                    return ["PushNotifications", "EmailNotifications"][row]
                case .logout:
                    return "LogOut"
            }
        }
    }
}

extension SettingsDataSource: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return SettingsSection.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingsSection(rawValue: section)?.numRows ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let section = SettingsSection(rawValue: indexPath.section) else {
            fatalError("Section index out of range")
        }
        
        let identifier = section.cellIdentifier(for: indexPath.row)
        
        return tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        guard let section = SettingsSection(rawValue: section) else {
                    fatalError("Section index out of range")
                }
        return section.displayText
    }
}
