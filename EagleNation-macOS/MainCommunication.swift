//
//  MainCommunication.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/8/21.
//

import SwiftUI

/* View Model for secure communication between view (MainView.swift) and model (MainBackend.swift)
    All communication must pass through here */

class MainCommunication: ObservableObject {
    @Published private var backend = MainBackend()
    
    // MARK: - Access to Model
    var navDirs: [MainBackend.NavDir] {
        backend.navDirs
    }
    
    // MARK: - User Intent(s)
    
}
