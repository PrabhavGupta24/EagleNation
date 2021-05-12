//
//  EPNews.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/21/21.
//

import SwiftUI

class EPNews {
    private var newsBackend = NewsBackend()
    
    // MARK: - Access to Model
    var news: [NewsBackend.Article] {
        newsBackend.news
    }
    
    // MARK: - User Intent
    func newArticle(title: String, content: String, image: Image) {
        newsBackend.newArticle(title: title, content: content, image: image)
    }
    
    func prevArticle(current: Int) -> Int {
        newsBackend.prevArticle(current: current)
    }
    
    func nextArticle(current: Int) -> Int {
        newsBackend.nextArticle(current: current)
    }
}
