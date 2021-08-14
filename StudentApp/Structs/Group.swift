//
//  Group.swift
//  StudentApp
//
//  Created by Erik Van Schepdael on 11/08/2021.
//

import Foundation


struct Group{
    var id: String
    var name: String
    var imageUrl: String
    var followers: Int
    var description: String
    var website: String
    var shortDescription: String
    var groupSort: String
}

extension Group {
    static var testData = [
        Group(id: UUID().uuidString, name: "HSC Salmonella", imageUrl: "Salmonella", followers: 535, description: "Salmonella is een club van kameraden. Van weinig woorden en veel daden. We gaan soms naar de les maar hangen liever aan de fles, een vatteke valt voor ons niet te versmaden.", website: "www.hscsalmonella.be", shortDescription: "Gent beeft, Salmonella leeft", groupSort: "Studentenvereniging"),
        Group(id: UUID().uuidString, name: "Moeder Lies", imageUrl: "MoederLies", followers: 1234, description: "Moeder Lies is sinds 1995 de officiële studentenkring van Handelswetenschappen en Bestuurskunde & Publiek Management te Gent. Wij vertegenwoordigen en ondersteunen de studenten aan de Faculteit Economie en Bedrijfskunde op talloze manieren.", website: "www.moederlies.be", shortDescription: "Moeder Lies Hup Hup!", groupSort: "Studentenvereniging"),
        Group(id: UUID().uuidString, name: "Netlix People", imageUrl: "Netflix", followers: 4536, description: "People who really enjoy watching Netflix!", website: "www.netflix.com", shortDescription: "Go Netflix Go!", groupSort: "Fan Group"),
        Group(id: UUID().uuidString, name: "Americans United", imageUrl: "America", followers: 234, description: "We are the Americans on this platform and we are united!", website: "www.america.com", shortDescription: "FREEDOOOOM", groupSort: "Fan Group"),
        Group(id: UUID().uuidString, name: "Chips Eater", imageUrl: "Lays", followers: 1, description: "When I'm alone in my house I always eat a bag of chips. They are so delicious you should try it sometime.", website: "www.lays.com", shortDescription: "Lays are the best!", groupSort: "Foodies"),
        Group(id: UUID().uuidString, name: "We R Huawei", imageUrl: "huawei", followers: 12, description: "The one and only brand page for Huawei! Buy yours today!", website: "www.huawei.com", shortDescription: "HUAWEI!", groupSort: "Brand Page"),
    ]
}

/*
 "group": {
     "name": "HSC Salmonella",
     "followers": 535,
     "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu erat luctus, posuere sapien sit amet, tincidunt turpis. Duis a maximus ex, in luctus turpis. Quisque quis fermentum dui. Mauris cursus luctus orci ut sodales. Mauris vitae dolor eu massa vehicula venenatis eget at erat.",
     "website": "www.hscsalmonella.be",
     "shortDescription": "Gent beeft, salmonella leeft",
     "groupSort": "Studentenvereniging",
     "imageUrl": ""
 }
 */
