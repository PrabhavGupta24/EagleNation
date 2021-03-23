//
//  EagleNation_macOSApp.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/8/21.
//

import SwiftUI

@main
struct EagleNation_macOSApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .frame(minWidth: 720, idealWidth: 900, minHeight: 440, idealHeight: 550)
        }
    }
}
