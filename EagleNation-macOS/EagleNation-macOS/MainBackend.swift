//
//  MainBackend.swift
//  Eagle Nation macOS
//
//  Created by 90308320 on 3/8/21.
//

import Foundation

struct MainBackend {
    let navDirs = [
        NavDir(name: "News"),
        NavDir(name: "Bulletin"),
        NavDir(name: "Clubs"),
        NavDir(name: "Schedule"),
        NavDir(name: "Calendar"),
        NavDir(name: "Campus")
    ]
    
    struct NavDir: Identifiable {
        let name: String
        var id = UUID()
    }
}
