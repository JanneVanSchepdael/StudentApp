//
//  EventDetailDataSource.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 09/08/2021.
//

import UIKit

class EventDetailDataSource: NSObject {
    var event: Event
    var group: Group
    
    init(event: Event){
        self.event = event
        self.group = event.group
    }
    
    enum EventSection: Int, CaseIterable{
        case banner
        case info
        case description
        case group
        
        func cellIdentifier(for row: Int) -> String {
            switch self {
                case .banner:
                    return "BannerCell"
                case .info:
                    return "EventInfoCell"
                case .description:
                    return "EventDescriptionCell"
                case .group:
                    return "EventGroupCell"
            }
        }
    }
    
    private func dequeueAndConfigureCell(for indexPath: IndexPath, from tableView: UITableView) -> UITableViewCell {
        guard let section = EventSection(rawValue: indexPath.section) else {
            fatalError("Section index out of range")
        }
        
        let identifier = section.cellIdentifier(for: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        switch section {
        case .banner:
            if let bannerCell = cell as? BannerCell{
                bannerCell.configure(imageUrl: event.bannerUrl)
            }
        case .info:
            if let infoCell = cell as? EventInfoCell{
                infoCell.configure(event)
            }
        case .description:
            if let descriptionCell = cell as? EventDescriptionCell{
                descriptionCell.configure(description: event.description)
            }
        case .group:
            if let groupCell = cell as? EventGroupCell{
                groupCell.configure(imageUrl: group.imageUrl, groupName: group.name, groupFollowers: group.followers)
            }
            
        }
        
        return cell
    }
    
    
    
    
}


extension EventDetailDataSource: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return EventSection.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return dequeueAndConfigureCell(for: indexPath, from: tableView)
    }

}


