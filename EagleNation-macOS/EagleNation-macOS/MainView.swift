//
//  MainView.swift
//  Eagle Nation macOS
//
//  Created by 90308320 on 3/1/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        HStack() {
            NavigationView {
                Sidebar()
            }
            .frame(maxWidth: 150)
            Announcements()
        }
    }
}


struct Announcements: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Announcements").font(.largeTitle)
            Spacer()
        }
        .font(.custom(fontName, size: 18))
        .padding(.trailing, 200)
        .padding()
    }
}

struct Sidebar: View {
    var body: some View {
        VStack() {
            Image("EPWings")
                .resizable()
                .scaledToFit()
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            Divider()
            List {
                Text("Announcements")
                Text("Schedule")
                Text("Grades")
                Text("Calendar")
                Text("Clubs")
            }
            .listStyle(SidebarListStyle())
        }
    }
}


// MARK: - Constants

let fontName = "HelveticaNeue-Medium"




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
