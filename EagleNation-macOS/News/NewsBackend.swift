//
//  NewsBackend.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/21/21.
//

import Foundation
import SwiftUI

struct NewsBackend {
    
    var news = [
        Article(title: "test", body: "body", image: Image("EPHSBuilding")),
        Article(title: "test1", body: "body1", image: Image("EPHSBuilding")),
        Article(title: "test2", body: "body2", image: Image("EPHSBuilding"))
    ]
    
    mutating func newArticle(title: String, body: String, image: Image) {
        news.append(Article(title: title, body: body, image: image))
    }
    
    struct Article: Identifiable {
        var title: String
        var body: String
        var image: Image
        var id = UUID()
    }
}
