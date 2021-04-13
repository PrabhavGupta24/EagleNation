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
    var article: [NewsBackend.Article] {
        newsBackend.news
    }
}
