//
//  MainBackend.swift
//  Eagle Nation macOS
//
//  Created by 90308320 on 3/8/21.
//

import Foundation
import SwiftUI

struct MainBackend {
    let navDirs = [
        NavDir(title: "News", symbol: "newspaper", content: AnyView(NewsView())),
        NavDir(title: "Bulletin", symbol: "list.bullet.rectangle", content: AnyView(BulletinView())),
        NavDir(title: "Clubs", symbol: "person.2", content: AnyView(ClubsView())),
        NavDir(title: "Schedule", symbol: "clock", content: AnyView(ScheduleView())),
        NavDir(title: "Calendar", symbol: "calendar", content: AnyView(CalendarView()))
    ]
    
    struct NavDir: Identifiable {
        let title: String
        let symbol: String
        let content: AnyView
        let id = UUID()
    }
}
