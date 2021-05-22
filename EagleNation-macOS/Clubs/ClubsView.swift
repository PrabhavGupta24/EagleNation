//
//  ClubsView.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/12/21.
//

import SwiftUI

struct ClubsView: View {
    let clubsBackend = EPClubs()
    var clubsBlock: Int = EPClubs().clubsBlock
    //
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color(.windowBackgroundColor))
                    .shadow(radius: 10)
                VStack(alignment: .leading, spacing: 10) {
                    ClubsTitle("Clubs")
                    VStack {
                        ForEach(clubsBackend.clubs) { club in
                            WideClubsBlock(title: club.title, content: club.content, image: club.image, contact: club.contact, contactEmail: club.contactEmail)
                        }
                    }.padding()
                }.padding()
            }
            
//            ZStack(alignment: .leading) {
//                RoundedRectangle(cornerRadius: 12)
//                    .foregroundColor(Color(.windowBackgroundColor))
//                    .shadow(radius: 10)
//                VStack(alignment: .leading, spacing: 10) {
//                    ClubsTitle("Recent News")
//                    VStack {
//                        ForEach(clubsBackend.clubs) { article in
//                            WideClubsBlock(title: article.title, content: article.content, image: article.image)
//                        }
//                    }
//                }.padding()
//            }
        }
    }
}

struct ClubsTitle: View {
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

struct WideClubsBlock: View {
    var title: String
    var content: String
    var image: Image
    var contact: String
    var contactEmail: String
    
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
                    VStack (alignment: .leading) {
                        Text(title)
                            .font(.title)
                        Text("")
                        Text(content).font(.title3)
                        HStack(spacing: 0) {
                            Text("Contact: ")
                            Text(contact)
                            Text(" at ")
                            Text(contactEmail)
                        }.font(.title3)
                    }.padding()
                }
            }.frame(width: geo.size.width)
        }.frame(height: 120)
    }
}

//struct SmallClubsBlock: View {
//    var title: String
//    var image: Image
//
//    var body: some View {
//        GeometryReader { geo in
//            ZStack {
//                RoundedRectangle(cornerRadius: 12)
//                    .foregroundColor(Color(.windowBackgroundColor))
//                    .shadow(radius: 10)
//                VStack(alignment: .leading, spacing: 0) {
//                    image.centerCropped()
//                    Text(title)
//                        .font(.largeTitle)
//                        .padding()
//                }
//            }.frame(width: geo.size.width)
//        }.frame(height: 150)
//    }
//}



struct ClubsView_Previews: PreviewProvider {
    static var previews: some View {
        ClubsView()
            
    }
}
