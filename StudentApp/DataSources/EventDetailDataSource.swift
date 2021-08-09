//
//  EventDetailDataSource.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 09/08/2021.
//

import UIKit

class EventDetailDataSource: NSObject {

}


extension EventDetailDataSource: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // TO DO
    }
}


