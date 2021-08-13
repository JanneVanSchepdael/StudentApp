//
//  EventListDataSource.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 09/08/2021.
//

import UIKit

class EventListDataSource: NSObject {
    private var events = [Event]()
    
    init(events: [Event]){
        self.events = events
        super.init()
    }
    
    enum Filter: Int{
        case home
        case popular
        
        func shouldInclude(following: Bool) -> Bool{
            switch self {
                case .home: return following
                case .popular: return true
            }
        }
    }
    
    var filter: Filter = .popular
    
    var filteredEvents: [Event]{
        return events.filter { filter.shouldInclude(following: $0.following)}.sorted { $0.startDate < $1.startDate }
    }
}


extension EventListDataSource: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return filteredEvents.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:
            Constants.EVENTCELL_ID, for: indexPath) as! EventListCell
        
        //Configure cell with data
        let event = filteredEvents[indexPath.section]
        
        cell.configure(event)

        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }
}
