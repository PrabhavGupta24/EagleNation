//
//  BulletinView.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/12/21.
//

import SwiftUI

struct BulletinView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Daily Bulletin").font(.largeTitle)
                Spacer()
            }
            Spacer()
            Bulletin()
            Spacer()
        }
        .padding()
    }
}

struct Bulletin: View {
    var body: some View {
        Text("Insert here")
    }
}

struct BulletinView_Previews: PreviewProvider {
    static var previews: some View {
        BulletinView()
    }
}
