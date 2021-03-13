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
            NavBar()
            NewsView()
        }
    }
}

struct NavBar: View {
    let navDirs: Array<MainBackend.NavDir> = MainCommunication().navDirs
    
    var body: some View {
        VStack() {
            Image("EPWingsDark")
                .resizable()
                .scaledToFit()
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            Divider()
            List(navDirs) { navDir in
                NavigationLink(destination: Text(navDir.name)) {
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
