//
//  NewsView.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/12/21.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Critical Information")
                .font(.custom("OpenSans-Bold", size: 30))
                .foregroundColor(.red)
            HStack {
                //ForEach...
                Text("Important news")
                //horizontal scrolling news
            }
            Text("Recent News")
                .font(.custom("OpenSans-Bold", size: 30))
                .foregroundColor(.red)
            VStack {
                //ForEach...
                Text("recent news")
                //vertical scrolling news
            }
            Spacer()
        }.font(.custom(fontName, size: 18))
    }
}

struct NewsBlock: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(.windowBackgroundColor))
                .shadow(radius: 10)
                // add blur
            NavigationLink("New Article", destination: NewArticleView())
//            List {
//                //foreach news
//                // news.title ... news.body
//            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
            
    }
}
