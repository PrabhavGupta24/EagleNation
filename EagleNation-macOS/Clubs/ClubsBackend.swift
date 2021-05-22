//
//  ClubsBackend.swift
//  EagleNation-macOS
//
//  Created by 90309089 on 5/22/21.
//

import Foundation
import SwiftUI

struct ClubsBackend {
    
    var clubs = [
        Club(title: "Chess", content: "A club that plays chess.", image: Image("EPHSBuilding"), contact: "Person", contactEmail: "personID@ep-student.org"),
        Club(title: "test1", content: "body1", image: Image("EPHSBuilding"), contact: "Person1", contactEmail: "personID1@ep-student.org"),
        Club(title: "test2", content: "body2", image: Image("EPHSBuilding"), contact: "Person2", contactEmail: "personID2@ep-student.org"),
        Club(title: "test3", content: "body3", image: Image("EPHSBuilding"), contact: "Person3", contactEmail: "personID3@ep-student.org")
    ]
    
    mutating func newClub(title: String, content: String, image: Image, contact: String, contactEmail: String) {
        clubs.append(Club(title: title, content: content, image: image, contact: contact, contactEmail: contactEmail))
    }
    
    var clubsBlock: Int = 1
    
    func prevClub(clubsBlock: Int) -> Int {
        if clubsBlock == 1 {
            return clubsBlock
        } else {
            return clubsBlock - 1
        }
    }
    
    func nextClub(clubsBlock: Int) -> Int {
        if clubsBlock == clubs.count {
            return clubsBlock
        } else {
            return clubsBlock + 1
        }
    }
    
    struct Club: Identifiable {
        var title: String
        var content: String
        var image: Image
        var id = UUID()
        var contact: String
        var contactEmail: String
    }
}

