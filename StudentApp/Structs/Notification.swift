//
//  Notification.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 13/08/2021.
//

import Foundation


struct Notification{
    var date: Date
    var user: User
    var event: Event
}

extension Notification{
    static var testData = [
        Notification(date: Date(), user: User.testData[0], event: Event.testData[0]),
        Notification(date: Date().addingTimeInterval(24*60*60), user: User.testData[1], event: Event.testData[1]),
        Notification(date: Date().addingTimeInterval(4*60*60), user: User.testData[1], event: Event.testData[4]),
    ]
}
