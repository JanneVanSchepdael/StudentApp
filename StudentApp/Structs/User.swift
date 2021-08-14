//
//  User.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 14/08/2021.
//

import Foundation


struct User{
    var id: String
    var name: String
    var imageUrl: String = "profile"
    var function: String
    var study: String
    var followedGroups: [Group] = [Group]()
    var interestedEvents: [Event] = [Event]()
}

extension User{
    static var testData = [
        User(id: UUID().uuidString, name: "Janne Van Schepdael", imageUrl: "JanneVS", function: "Vice-Praeses at HSC Salmonella", study: "IT at HoGent", followedGroups: [Group.testData[0], Group.testData[1]]),
        User(id: UUID().uuidString, name: "Ben Cremer", imageUrl: "BenC", function: "Praeses at HSC Salmonella", study: "IT at Hogent"),
        User(id: UUID().uuidString, name: "Stiene VS", function: "Something with art", study: "Design at Artevelde"),
        User(id: UUID().uuidString, name: "Jacob Dewulf", function: "", study: ""),
        User(id: UUID().uuidString, name: "Ward Lingier", function: "", study: ""),
        User(id: UUID().uuidString, name: "César Cremery", function: "", study: "")
    ]
    
    static var loggedUser = testData[0]
}
