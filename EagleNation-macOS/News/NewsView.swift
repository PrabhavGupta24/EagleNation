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
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(.windowBackgroundColor))
                .shadow(radius: 10)
                // TODO: - add blur
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("Critical Information")
                        .font(.custom("OpenSans-Bold", size: 30))
                        .foregroundColor(.red)
                    Spacer()
                    Button("Prev", action: newsBackend.prevArticle(current: 1))
                }
                HStack {
                    ForEach(newsBackend.news) { article in
                        SmallNewsBlock(title: article.title, image: article.image)
                    }
                }
            }.padding()
        }
        
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(.windowBackgroundColor))
                .shadow(radius: 10)
                // TODO: - add blur
            VStack(alignment: .leading, spacing: 10) {
                Text("Recent News")
                    .font(.custom("OpenSans-Bold", size: 30))
                    .foregroundColor(.red)
                VStack {
                    ForEach(newsBackend.news) { article in
                        LargeNewsBlock(title: article.title, content: article.content, image: article.image)
                    }.padding()
                }
            }.padding()
        }
    }
}

struct SmallNewsBlock: View {
    var title: String
    var image: Image

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(.windowBackgroundColor))
                .shadow(radius: 10)
                // TODO: - add blur
            VStack(alignment: .leading) {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                Spacer()
                Text(title)
                    .font(.largeTitle)
                    .padding()
                Spacer()
            }
        }.frame(width: 200, height: 180)
    }
}

struct LargeNewsBlock: View {
    var title: String
    var content: String
    var image: Image
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color(.windowBackgroundColor))
                    .shadow(radius: 10)
                    // TODO: - add blur
                HStack {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipped()
                    VStack {
                        Text(title)
                        Text(content)
                    }
                }
            }.frame(width: geometry.size.width)
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
            
    }
}
