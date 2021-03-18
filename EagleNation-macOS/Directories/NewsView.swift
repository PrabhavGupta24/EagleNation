//
//  NewsView.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/12/21.
//

import SwiftUI

struct NewsView: View {
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack() {
                Text("Eden Prairie Schools News")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Spacer()
            }
        }
        .font(.custom(fontName, size: 18))
        .padding()
    }
}
