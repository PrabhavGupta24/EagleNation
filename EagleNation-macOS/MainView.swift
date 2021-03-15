//
//  MainView.swift
//  Eagle Nation macOS
//
//  Created by 90308320 on 3/1/21.
//

import SwiftUI

struct MainView: View {
    let navDirs = MainCommunication().navDirs
    
    var body: some View {
        NavigationView {
            NavBar<AnyView>(navDirs) { navDir -> Destination in
                let destination = navDir.destination
                return destination
            }
            NewsView()
        }
    }
}

struct NavBar<Destination: View>: View {
    let navDirs = MainCommunication().navDirs
    let buildDestination: (MainBackend<View>.NavDir) -> Destination
    
    var body: some View {
        VStack() {
            Image("EPWingsDark")
                .resizable()
                .scaledToFit()
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            Divider()
            List(navDirs) { navDir in
                NavigationLink(destination: buildDestination(navDir)) {
                    Text(navDir.name)
                }
            }
            .listStyle(SidebarListStyle())
        }
    }
}


// MARK: - Constants

let fontName = "HelveticaNeue-Medium"


// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
