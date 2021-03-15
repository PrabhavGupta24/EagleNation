//
//  MainBackend.swift
//  Eagle Nation macOS
//
//  Created by 90308320 on 3/8/21.
//

import Foundation

struct MainBackend<Destination> {
    let navDirs = [
        NavDir(name: "News", dest: NewsView() as! Destination),
        NavDir(name: "Bulletin", dest: BulletinView() as! Destination),
        NavDir(name: "Clubs", dest: ClubsView() as! Destination),
        NavDir(name: "Schedule", dest: ScheduleView() as! Destination),
        NavDir(name: "Calendar", dest: CalendarView() as! Destination),
        NavDir(name: "Campus", dest: CampusView() as! Destination)
    ]
    
    struct NavDir: Identifiable {
        let name: String
        var dest: Destination
        var id = UUID()
    }
}
