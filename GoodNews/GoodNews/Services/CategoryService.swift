//
//  CategoryService.swift
//  GoodNews
//
//  Created by MarianaSouza on 11/26/19.
//  Copyright © 2019 MarianaSouza. All rights reserved.
//

import Foundation

class CategoryService {
    
    func getAllHeadlineForAllCategories (completion: @escaping ([Category])->()) {
        var categories = [Category]()
        var requestCount = 0
        let categoriesCount = Category.all().count
        
        Category.all().forEach { category  in
            
            Webservice().load(Article.by(category)) { articles in
                requestCount += 1
                
                guard let articles = articles else {
                    return
                }
                
                let category = Category(title: category, articles: articles)
                categories.append(category)
                
                if requestCount == categoriesCount {
                    DispatchQueue.main.async {
                        completion(categories)
                    }
                }
            }
        }
    }
}
