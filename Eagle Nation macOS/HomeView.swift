//
//  HomeView.swift
//  Eagle Nation macOS
//
//  Created by 90308320 on 3/1/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack() {
                Text("Announcements").font(.largeTitle).multilineTextAlignment(.leading)
                Spacer()
                List {
                    Text("placement")
                }
                Spacer()
            }
            .font(.custom(fontName, size: 18))
            .padding()
        }
        .navigationTitle("Welcome to Eden Prairie")
    }
}


struct SideBar: View {
    var body: some View {
        VStack() {
            Text("Announcements")
            Divider()
            Text("Grades")
            Divider()
            Text("Calendar")
            Divider()
            Text("Clubs")
        }
    }
}


// MARK: - Constants

let fontName = "HelveticaNeue-Medium"











struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
