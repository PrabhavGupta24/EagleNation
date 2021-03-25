//
//  NewsBackend.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/21/21.
//

import Foundation

struct NewsBackend {
    
    var news = [Article]()
    
    mutating func newArticle(title: String, body: String) {
        news.append(Article(title: title, body: body))
    }
    
    struct Article {
        var title: String
        var body: String
    }
}
