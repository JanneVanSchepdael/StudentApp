//
//  ViewController.swift
//  StudentApp
//
//  Created by Atlas on 18/06/2021.
//

import UIKit

class EventListViewController: UITableViewController, EventDelegate {
        
    @IBOutlet var searchBar: UISearchBar!
    
    private var eventListDataSource: EventListDataSource?
    private var eventRepository: EventRepository = EventRepository();
    var events = [Event]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set as delegate for itself
        eventRepository.delegate = self
        eventRepository.getEventsFromJSON()

        // Set Delegate of tableview
        tableView.delegate = self
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 300

        configureItems()
    }
    
    
    private func configureItems(){
        let leftNavBarButton = UIBarButtonItem(customView: searchBar)
        self.navigationItem.leftBarButtonItem = leftNavBarButton
        
        searchBar.sizeToFit()
        
        var frame = searchBar.frame
        frame.origin.x = 20
        frame.size.width -= 125
        searchBar.frame = frame
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard tableView.indexPathForSelectedRow != nil else{
            return
        }
        
        // Event that was tapped on
        let selectedEvent = events[tableView.indexPathForSelectedRow!.row]
        
        // Go to detail view controller
        let detailVC = segue.destination as! EventDetailViewController
        
        //set event in detail controller
        detailVC.configure(with: selectedEvent)
    }

    // MARK: - Event Delegate Methods
    func eventsFetched(_ events: [Event]) {
        self.events = events
        
        // Set Datasource of tableview
        eventListDataSource = EventListDataSource(events: events)
        tableView.dataSource = eventListDataSource
        
        // Refresh tableview
        tableView.reloadData()
    }
}
