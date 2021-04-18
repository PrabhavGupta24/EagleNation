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
        }
    }
}

struct NavBar: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    let navDirs = MainCommunication().navDirs
    
    var body: some View {
        VStack {
            WingsLogo().padding(.top)
            Divider()
            List(navDirs) { NavDir in
                NavigationLink(destination: NavContentView(title: NavDir.title, content: NavDir.content)) {
                    HStack {
                        Image(systemName: NavDir.symbol)
                        Text(NavDir.title)
                    }
                }
            }
        }
    }
}

struct WingsLogo: View {
    var body: some View {
        VStack {
            Text("\u{E921}")
                .font(.custom("icomoon", size: 40))
                .foregroundColor(.red)
            Text("EDEN PRAIRIE")
                .font(.custom("OpenSans-Bold", size: 15))
        }
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
