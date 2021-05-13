//
//  NewsView.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/12/21.
//

import SwiftUI

struct NewsView: View {
    let newsBackend = EPNews()
    var newsBlock: Int = EPNews().newsBlock
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color(.windowBackgroundColor))
                    .shadow(radius: 10)
                VStack(alignment: .leading, spacing: 10) {
                    NewsTitle("Critical Information")
                    HStack {
                        SmallNewsBlock(title: newsBackend.news[newsBlock - 1].title, image: newsBackend.news[newsBlock - 1].image)
                        SmallNewsBlock(title: newsBackend.news[newsBlock].title, image: newsBackend.news[newsBlock].image)
                    }
                }.padding()
            }
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color(.windowBackgroundColor))
                    .shadow(radius: 10)
                VStack(alignment: .leading, spacing: 10) {
                    NewsTitle("Recent News")
                    VStack {
                        ForEach(newsBackend.news) { article in
                            WideNewsBlock(title: article.title, content: article.content, image: article.image)
                        }
                    }
                }.padding()
            }
        }
    }
}

struct NewsTitle: View {
    init(_ title: String) { self.title = title }
    
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.custom("OpenSans-Bold", size: 28))
                .foregroundColor(.red)
            Spacer()
            //Button("Prev", action: newsBackend.prevArticle(current: 1))
            //Button("Next", action: newsBackend.nextArticle(current: 1))
        }
    }
}

struct SmallNewsBlock: View {
    var title: String
    var image: Image

    var body: some View {
        GeometryReader { geo in
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color(.windowBackgroundColor))
                    .shadow(radius: 10)
                VStack(alignment: .leading, spacing: 0) {
                    image.centerCropped()
                    Text(title)
                        .font(.largeTitle)
                        .padding()
                }
            }.frame(width: geo.size.width)
        }.frame(height: 150)
    }
}

struct WideNewsBlock: View {
    var title: String
    var content: String
    var image: Image
    
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color(.windowBackgroundColor))
                    .shadow(radius: 10)
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
            }.frame(width: geo.size.width)
        }.frame(height: 80)
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
            
    }
}
