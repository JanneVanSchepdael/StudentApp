//
//  Notification.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 13/08/2021.
//

import Foundation


struct Notification : Decodable{
    var imageUrl: String
    var notification: String
    var date: Date

    enum CodingKeys: String, CodingKey {
        case imageUrl
        case notification
        case date
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        self.imageUrl = try container.decode(String.self, forKey: .imageUrl)
        self.notification = try container.decode(String.self, forKey: .notification)
        self.date = try container.decode(Date.self, forKey: .date)
    }
}
