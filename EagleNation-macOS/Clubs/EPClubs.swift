//
//  EPClubs.swift
//  EagleNation-macOS
//
//  Created by 90309089 on 5/22/21.
//

import SwiftUI

class EPClubs {
    private var clubsBackend = ClubsBackend()
    
    // MARK: - Access to Model
    var clubs: [ClubsBackend.Club] {
        clubsBackend.clubs
    }
    
    var clubsBlock: Int {
        clubsBackend.clubsBlock
    }
    
    // MARK: - User Intent
    func newClub(title: String, content: String, image: Image, contact: String, contactEmail: String) {
        clubsBackend.newClub(title: title, content: content, image: image, contact: contact, contactEmail: contactEmail)
    }

    func prevClub(clubsBlock: Int) -> Int {
        clubsBackend.prevClub(clubsBlock: clubsBlock)
    }
    
    func nextClub(clubsBlock: Int) -> Int {
        clubsBackend.nextClub(clubsBlock: clubsBlock)
    }
}

