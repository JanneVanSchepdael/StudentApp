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
    
}


extension EventListDataSource: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:
            Constants.EVENTCELL_ID, for: indexPath) as! EventListCell
        
        //Configure cell with data
        let event = self.events[indexPath.row]

        cell.setCell(event)

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //TO DO
    }
}
