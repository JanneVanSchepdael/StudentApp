//
//  ViewController.swift
//  StudentApp
//
//  Created by Atlas on 18/06/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var eventRepository: EventRepository = EventRepository();
    var events = [Event]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set ViewController as datasource & delegate
        tableView.dataSource = self
        tableView.delegate = self
        
        eventRepository.getEventsFromJSON()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.POSTCELL_ID, for: <#T##IndexPath#>)
        
        //TO DO: configure cell with data
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }

}

