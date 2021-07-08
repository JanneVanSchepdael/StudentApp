//
//  ViewController.swift
//  StudentApp
//
//  Created by Atlas on 18/06/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,
                     UITableViewDelegate, EventDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var eventRepository: EventRepository = EventRepository();
    var events = [Event]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set ViewController as datasource & delegate
        tableView.dataSource = self
        tableView.delegate = self

        // Set as delegate for itself
        eventRepository.delegate = self
        
        eventRepository.getEventsFromJSON()
    }

    // MARK: - Event Delegate Methods
    
    func eventsFetched(_ events: [Event]) {
        self.events = events

        // Refresh tableview
        tableView.reloadData()
    }

    
    // MARK: - TableView Methods

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.POSTCELL_ID, for: <#T##IndexPath#>)
        
        //TO DO: configure cell with data
        let title = self.events[indexPath.row].title

        cell.textLabel?.text = title

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }

}

