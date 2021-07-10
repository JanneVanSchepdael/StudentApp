//
//  DetailViewController.swift
//  StudentApp
//
//  Created by Atlas on 09/07/2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    var event:Event?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Load variables before view loads
    override func viewWillAppear(_ animated: Bool) {
        // Clear all fields
        titleLabel.text = ""
        
        // Check if there is an event
        guard event != nil else{
            return
        }
        
        // Load variables into view
        titleLabel.text = "We have loaded: \(event?.title ?? "NO TITLE GIVEN")"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
