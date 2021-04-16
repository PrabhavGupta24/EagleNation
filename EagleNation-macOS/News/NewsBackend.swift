//
//  NewsBackend.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/21/21.
//

import Foundation

struct NewsBackend {
    
    var news = [
        Article(title: "test", body: "body"),
        Article(title: "test1", body: "body1"),
        Article(title: "test2", body: "body2")
    ]
    
    mutating func newArticle(title: String, body: String) {
        news.append(Article(title: title, body: body))
    }
    
    struct Article: Identifiable {
        var title: String
        var body: String
        var id = UUID()
    }
}
