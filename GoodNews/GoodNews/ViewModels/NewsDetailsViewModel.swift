//
//  NewsDetailsViewModel.swift
//  GoodNews
//
//  Created by MarianaSouza on 11/27/19.
//  Copyright © 2019 MarianaSouza. All rights reserved.
//

import Foundation

struct NewsDetailsViewModel {
    let article: Article
}


extension NewsDetailsViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension NewsDetailsViewModel {
    var sourceName: String {
        return self.article.sourceName
    }
    
    var url: String? {
        return self.article.url
    }
}
