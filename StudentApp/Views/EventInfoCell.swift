//
//  EventInfoCell.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 10/08/2021.
//

import UIKit

class EventInfoCell: UITableViewCell {
    private var event: Event?
    
    @IBOutlet weak var eventNameField: UILabel!
    @IBOutlet weak var eventLocationField: UILabel!
    
    @IBOutlet weak var goingButton: UIButton!
    @IBOutlet weak var interestedButton: UIButton!
    
    @IBOutlet weak var eventDateField: UILabel!
    @IBOutlet weak var eventGoingField: UILabel!
    @IBOutlet weak var eventGroupField: UILabel!
    @IBOutlet weak var eventFullLocationField: UILabel!
    
    func configure(_ e: Event){
        let df = DateFormatter()
        df.dateFormat = "MMM d, h:mm a"
        
        self.event = e
        
        eventNameField.text = event!.title
        eventLocationField.text = event!.location
        
        // Set buttons
        setButtons()
        
        // Set info with logos
        eventDateField.attributedText = addImageToLabel(text: df.string(from: event!.startDate) + " - " + df.string(from: event!.endDate), imageName: "calendar")
        eventGoingField.attributedText = addImageToLabel(text: String(event!.interested) + " going or interested", imageName: "checkmark")
        eventGroupField.attributedText = addImageToLabel(text: "Event by " + event!.group.name, imageName: "person")
        eventFullLocationField.attributedText = addImageToLabel(text: event!.location, imageName: "location")
    }
    
    @IBAction func goingButtonClicked(_ sender: Any) {
        if(goingButton.imageView?.image == UIImage(systemName: "checkmark.square")){
            interestedButton.setImage(UIImage(systemName: "star"), for: .normal)
            goingButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
            
            addInterestedEvent()
        } else{
            goingButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        }
    }
    
    @IBAction func interestedButtonClicked(_ sender: Any) {
        if(interestedButton.imageView?.image == UIImage(systemName: "star")){
            interestedButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
            goingButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
            
            addInterestedEvent()
        } else{
            interestedButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
    }
    
    private func addInterestedEvent(){
        if (!User.loggedUser.interestedEvents.contains(where: { $0.id == event?.id})){
            print("Event added to interested events")
            User.loggedUser.interestedEvents.append(event!)
        }
    }
    
    private func setButtons(){
        if(User.loggedUser.interestedEvents.contains(where: { $0.id == event?.id})){
            self.interestedButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else{
            self.interestedButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
        
        self.goingButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
    }
    
    // SOURCE: https://www.hackingwithswift.com/example-code/system/how-to-insert-images-into-an-attributed-string-with-nstextattachment
    private func addImageToLabel(text: String, imageName: String) -> NSMutableAttributedString{
    
    // create an NSMutableAttributedString that we'll append everything to
    let fullString = NSMutableAttributedString(string: "")

    // create our NSTextAttachment
    let image1Attachment = NSTextAttachment()
    image1Attachment.image = UIImage(systemName: imageName)

    // wrap the attachment in its own attributed string so we can append it
    let image1String = NSAttributedString(attachment: image1Attachment)

    // add the NSTextAttachment wrapper to our full string, then add some more text.
    fullString.append(image1String)
    fullString.append(NSAttributedString(string: " " + text))

    return fullString
    }
}
