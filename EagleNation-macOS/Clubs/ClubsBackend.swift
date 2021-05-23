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
        Club(title: "Chess Club", content: "Chess Club welcomes both serious, competitive players who want to compete in tournaments and events throughout the fall/winter months, as well as casual players who just want to play casual games for fun.", image: Image("ClubsChess"), contact: "Timothy Lee", contactEmail: "timlee19@gmail.com"),
        Club(title: "Science Olympiad", content: "Science Olympiad teams prepare and compete in science based events (take tests, run labs, design/build/run devices etc) in content areas including Biology, Physics, and Chemistry.", image: Image("ClubsScienceOlympiad"), contact: "Katie Foley", contactEmail: "kfoley@edenpr.org"),
        Club(title: "Art Club", content: "Art Club is a student-led group that meets to create, discuss, and enjoy the visual arts.", image: Image("ClubsArt"), contact: "Courtney Berndt", contactEmail: "cberndt@edenpr.org"),
        Club(title: "Mock Trial", content: "Mock Trial is a group of EPHS students who are interested in various aspects of the legal system.", image: Image("ClubsMockTrial"), contact: "Christopher Gray", contactEmail: "cwgray4@gmail.com")
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

