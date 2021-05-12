//
//  NavContentView.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/12/21.
//

import SwiftUI

struct NavContentView<Content: View>: View {
    var title: String
    var content: Content
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(spacing: 5) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("\u{E90B}").font(.custom("icomoon", size: 40))
                            + Text(" \(title) ").font(.custom("OpenSans-Bold", size: 40))
                            + Text("\u{E91F}").font(.custom("icomoon", size: 40))
                    }
                    Spacer()
                    Text(Date(), style: .date)
                        .font(.custom("OpenSans-Bold", size: 16))
                        .foregroundColor(.gray)
                }
                Divider()
            }.padding(EdgeInsets(top: 30, leading: 100, bottom: 0, trailing: 100))
            ScrollView(.vertical) { content.padding(.horizontal, 100) }
            Spacer()
        }
    }
}

