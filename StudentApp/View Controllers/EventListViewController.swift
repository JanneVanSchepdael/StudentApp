//
//  ViewController.swift
//  StudentApp
//
//  Created by Atlas on 18/06/2021.
//

import UIKit

class EventListViewController: UIViewController, UITableViewDelegate, EventDelegate {
        
    @IBOutlet var filterSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet var searchBar: UISearchBar!
    
    @IBAction func segmentControlChanged(_ sender: UISegmentedControl) {
        eventListDataSource?.filter = filter
        tableView.reloadData()
    }
    
    private var eventListDataSource: EventListDataSource?
    private var eventRepository: EventRepository = EventRepository();
    private var filter: EventListDataSource.Filter {
        return EventListDataSource.Filter(rawValue: filterSegmentedControl.selectedSegmentIndex) ?? .popular
    }
    
    var events = [Event]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set as delegate for itself
        eventRepository.delegate = self
        eventRepository.getEventsFromJSON()

        // Set Delegate of tableview
        tableView.delegate = self

        configureItems()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard tableView.indexPathForSelectedRow != nil else{
            return
        }
        
        // Event that was tapped on
        let selectedEvent = events[tableView.indexPathForSelectedRow!.section]
        
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
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if(section == 0){
            return 0
        }
        return 12
    }
    
    private func configureItems(){
        let leftNavBarButton = UIBarButtonItem(customView: searchBar)
        self.navigationItem.leftBarButtonItem = leftNavBarButton
        
        searchBar.sizeToFit()
        
        var frame = searchBar.frame
        frame.origin.x = 18
        frame.size.width -= 130
        searchBar.frame = frame
    }
}
