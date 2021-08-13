//
//  AddEventDataSource.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 13/08/2021.
//

import UIKit

class AddEventDataSource: NSObject {
    enum AddEventSection: Int, CaseIterable{
        case title
        case location
        case description
        case startDate
        case endDate
        case confirm
        
        var displayText: String {
            switch self {
                case .title:
                    return "Title"
                case .location:
                    return "Location"
                case .description:
                    return "Description"
                case .startDate:
                    return "Start Date"
                case .endDate:
                    return "End Date"
                case .confirm:
                    return " "
            }
        }
        
        func cellIdentifier(for row: Int) -> String {
            switch self {
                case .title:
                    return "AddTitleCell"
                case .location:
                    return "AddLocationCell"
                case .description:
                    return "AddDescriptionCell"
                case .startDate:
                    return "AddStartDateCell"
                case .endDate:
                    return "AddEndDateCell"
                case .confirm:
                    return "AddCell"
            }
        }
    }
    
}


extension AddEventDataSource: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return AddEventSection.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let section = AddEventSection(rawValue: indexPath.section) else {
            fatalError("Section index out of range")
        }
        
        let identifier = section.cellIdentifier(for: indexPath.row)
        
        return tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        guard let section = AddEventSection(rawValue: section) else {
                    fatalError("Section index out of range")
                }
        return section.displayText
    }


}
