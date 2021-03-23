//
//  NewsBackend.swift
//  EagleNation-macOS
//
//  Created by 90308320 on 3/21/21.
//

import Foundation

struct NewsBackend {
    
    let news: [Article]
    
    struct Article {
        var title: String
        var body: String
    }
}
