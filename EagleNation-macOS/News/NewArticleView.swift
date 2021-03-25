//
//  NewArticleView.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/24/21.
//

import SwiftUI

struct NewArticleView: View {
    @State var articleTitle = ""
    @State var articleBody = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Title")
            TextField("", text: $articleTitle)
            Text("Body")
            TextField("", text: $articleBody)
                .frame(height: 100)
                .textFieldStyle(PlainTextFieldStyle())
                .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
            Spacer()
        }
        .padding()
    }
}

struct NewArticleView_Previews: PreviewProvider {
    static var previews: some View {
        NewArticleView()
    }
}
