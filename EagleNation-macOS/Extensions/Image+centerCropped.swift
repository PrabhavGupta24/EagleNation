//
//  Image+Cropped.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 5/12/21.
//

import SwiftUI

extension Image {
    func centerCropped() -> some View {
        GeometryReader { geo in
            self
            .resizable()
            .scaledToFill()
            .frame(width: geo.size.width, height: geo.size.height)
            .clipped()
        }
    }
}
