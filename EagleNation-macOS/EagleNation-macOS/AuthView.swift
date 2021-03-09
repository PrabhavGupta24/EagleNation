//
//  AuthView.swift
//  SSH Remote Control
//
//  Created by 90308320 on 3/1/21.
//

import SwiftUI

struct AuthView: View {
    
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        VStack() {
            ZStack {
                TextField("Username", text: $username)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.controlAccentColor), lineWidth: 1))
                    .blur(radius: 3.0)
                Button(action: {}) {
                    Text("Right Arrow")
                }
                .frame(alignment: .trailing)
            }
            ZStack {
                TextField("Password", text: $password)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.controlAccentColor), lineWidth: 1))
                    .blur(radius: 3.0)
                Button(action: {}) {
                    Text("Right Arrow")
                }
                .frame(alignment: .trailing)
            }
            Spacer()
            Text("Settings")
        }
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .disableAutocorrection(true)
        .font(.custom(fontName, size: 18))
        .frame(maxWidth: 250)
        .padding()
    }
}

// MARK: - Constants
let tempFontName = "HelveticaNeue-Medium"



















struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
