//
//  MainCommunication.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/8/21.
//

import SwiftUI

/* View Model for secure communication between view (MainView.swift) and model (MainBackend.swift)
    All communication must pass through here */

class MainCommunication {
    private var mainBackend = MainBackend()
    
    // MARK: - Access to Model
    var navDirs: [MainBackend.NavDir] {
        mainBackend.navDirs
    }
}
