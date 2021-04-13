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
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        VStack() {
            Image(colorScheme == .light ? "EPWingsLight" : "EPWingsDark")
                .resizable()
                .scaledToFit()
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            Divider()
            List {
                NavigationLink(destination: NewsView()) {
                    Text("News")
                }.navigationTitle("Eden Prairie News")
                NavigationLink(destination: BulletinView()) {
                    Text("Bulletin")
                }.navigationTitle("Eden Prairie Daily Bulletin")
                NavigationLink(destination: ClubsView()) {
                    Text("Clubs")
                }.navigationTitle("Eden Prairie High School Clubs")
            }
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
