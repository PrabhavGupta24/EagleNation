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
        NavDir(title: "News", dest: AnyView(NewsView())),
        NavDir(title: "Bulletin", dest: AnyView(BulletinView())),
        NavDir(title: "Clubs", dest: AnyView(ClubsView())),
        NavDir(title: "Schedule", dest: AnyView(ScheduleView())),
        NavDir(title: "Calendar", dest: AnyView(CalendarView())),
        NavDir(title: "Campus", dest: AnyView(CampusView()))
    ]
    
    struct NavDir: Identifiable {
        let title: String
        let dest: AnyView
        var id = UUID()
    }
}


