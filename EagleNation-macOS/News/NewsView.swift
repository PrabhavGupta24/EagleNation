//
//  NewsView.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/12/21.
//

import SwiftUI

struct NewsView: View {
    let newsBackend = EPNews()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Critical Information")
                .font(.custom("OpenSans-Bold", size: 30))
                .foregroundColor(.red)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(newsBackend.news) { article in
                        NewsBlock(title: article.title, image: article.image)
                    }
                }
            }
            Text("Recent News")
                .font(.custom("OpenSans-Bold", size: 30))
                .foregroundColor(.red)
            VStack {
                ForEach(newsBackend.news) { article in
                    NewsBlock(title: article.title, image: article.image)
                }
            }
            Spacer()
        }.font(.custom(fontName, size: 18))
    }
}

struct NewsBlock: View {
    var title: String
    var image: Image

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(.windowBackgroundColor))
                .shadow(radius: 10)
                // add blur
            VStack() {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                Divider()
                Text(title)
                    .padding(EdgeInsets(top: -5, leading: 5, bottom: 5, trailing: 5))
            }
        }.frame(width: 200, height: 150)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
            
    }
}
