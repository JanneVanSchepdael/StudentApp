//
//  EventInfoCell.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 10/08/2021.
//

import UIKit

class EventInfoCell: UITableViewCell {

    
    @IBOutlet weak var eventNameField: UILabel!
    @IBOutlet weak var eventLocationField: UILabel!
    
    @IBOutlet weak var goingButton: UIButton!
    @IBOutlet weak var interestedButton: UIButton!
    
    @IBOutlet weak var eventDateField: UILabel!
    @IBOutlet weak var eventGoingField: UILabel!
    @IBOutlet weak var eventGroupField: UILabel!
    @IBOutlet weak var eventFullLocationField: UILabel!
    
    func configure(eventName: String, eventLocation: String, eventStart: Date,
                   eventEnd: Date, eventGoing: Int, eventGroup: String){
        let df = DateFormatter()
        df.dateFormat = "MMM d yy, h:mm a"
        
        eventNameField.text = eventName
        eventLocationField.text = eventLocation
        
        eventDateField.attributedText = addImageToLabel(text: df.string(from: eventStart) + "-" + df.string(from: eventEnd), imageName: "calendar")
        eventGoingField.attributedText = addImageToLabel(text: String(eventGoing) + " going or interested", imageName: "checkmark")
        eventGroupField.attributedText = addImageToLabel(text: "Event by " + eventGroup, imageName: "person")
        eventFullLocationField.attributedText = addImageToLabel(text: eventLocation, imageName: "location")
    }
    
    @IBAction func goingButtonClicked(_ sender: Any) {
        if(goingButton.imageView?.image == UIImage(systemName: "checkmark.square")){
            interestedButton.setImage(UIImage(systemName: "star"), for: .normal)
            goingButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        } else{
            goingButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        }
    }
    
    @IBAction func interestedButtonClicked(_ sender: Any) {
        if(interestedButton.imageView?.image == UIImage(systemName: "star")){
            interestedButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
            goingButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        } else{
            interestedButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
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
