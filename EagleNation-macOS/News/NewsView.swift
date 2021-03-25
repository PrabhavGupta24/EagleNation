//
//  NewsView.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/12/21.
//

import SwiftUI

struct NewsView: View {    
    var body: some View {
        VStack {
            Group {
                Text("\u{E90B}")
                + Text(" EP Schools News ").font(.custom("OpenSans-Bold", size: 40))
                + Text("\u{E91F}")
            }
            .font(.custom("icomoon", size: 40))
            .foregroundColor(.white)
            .padding()
            
            ZStack(alignment: .bottomLeading) {
                Image("EPEagleHalf")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                    .opacity(0.85)
                
                NewsBlock()
                    .padding(EdgeInsets(top: 0, leading: 75, bottom: 30, trailing: 75))
            }
        }
        .navigationTitle("EagleNation News")
        .font(.custom(fontName, size: 18))
        .background(
            Image("EPHS_Front")
                .resizable()
                .scaledToFill()
                .overlay(LinearGradient(gradient: Gradient(colors: [.red, .white]), startPoint: .top, endPoint: .bottom).opacity(0.9))
        )
    }
}

struct NewsBlock: View {
    @State var isModal: Bool = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(.windowBackgroundColor))
                .shadow(radius: 10)
                // add blur
            
            Button("New") {
                self.isModal = true
            }.sheet(isPresented: $isModal, content: { NewArticleView() })
//                Image(systemName: "plus")
//
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
