//
//  MainView.swift
//  Eagle Nation macOS
//
//  Created by 90308320 on 3/1/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            NavBar { NavDir in
                NavDir.dest
            }
            NewsView()
        }
    }
}

struct NavBar<Destination: View>: View {
    let navDirs = MainCommunication().navDirs
    let buildDestination: (MainBackend.NavDir) -> Destination
    @State var selectedView: Int? = 0
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        VStack() {
            Image(colorScheme == .light ? "EPWingsLight" : "EPWingsDark")
                .resizable()
                .scaledToFit()
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            Divider()
            List(navDirs) { NavDir in
                NavigationLink(destination: buildDestination(NavDir), tag: NavDir, selection: $selectedView) {
                    Text(NavDir.title)
                }
            }
        }
        .font(.custom(fontName, size: 18))
    }
}

// MARK: - Constants

let fontName = "OpenSans-Regular"


// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            
    }
}
