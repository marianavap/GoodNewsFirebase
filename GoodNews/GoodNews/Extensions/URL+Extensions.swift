//
//  URL+Extensions.swift
//  GoodNews
//
//  Created by MarianaSouza on 11/26/19.
//  Copyright © 2019 MarianaSouza. All rights reserved.
//

import Foundation

extension URL {
   static func urlForTopHeadlines(for category: String) -> URL {
        return URL (string: "https://newsapi.org/v2/top-headlines?category=\(category)&country=us&apiKey=e7fa0ce198bb439091af14d2c6a2510b")!
    }
}



