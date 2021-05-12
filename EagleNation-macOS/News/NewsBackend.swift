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
        Article(title: "test", content: "body", image: Image("EPHSBuilding")),
        Article(title: "test1", content: "body1", image: Image("EPHSBuilding")),
        Article(title: "test2", content: "body2", image: Image("EPHSBuilding"))
    ]
    
    mutating func newArticle(title: String, content: String, image: Image) {
        news.append(Article(title: title, content: content, image: image))
    }
    
    func prevArticle(current: Int) -> Int {
        if current == 1 {
            return current
        } else {
            return current - 1
        }
    }
    
    func nextArticle(current: Int) -> Int {
        if current == news.count {
            return current
        } else {
            return current + 1
        }
    }
    
    struct Article: Identifiable {
        var title: String
        var content: String
        var image: Image
        var id = UUID()
    }
}
