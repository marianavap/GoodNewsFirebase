//
//  CategoryService.swift
//  GoodNews
//
//  Created by itsector on 11/26/19.
//  Copyright © 2019 MarianaSouza. All rights reserved.
//

import Foundation

class CategoryService {
    
    var categories = [Category]()
    var requestCount = 0
    let categoriesCount = Category.all().count
    
    func getAllHeadlineForAllCategories (completion: @escaping ([Category])->()) {
        
        Category.all().forEach { category  in
            
            Webservice().load(Article.by(category)) { [weak self] articles in
                self?.requestCount += 1
                
                guard let articles = articles else {
                    return
                }
                
                let category = Category(title: category, articles: articles)
                self?.categories.append(category)
                
                if self?.requestCount == self?.categoriesCount {
                    DispatchQueue.main.sync {
                        if let categories = self?.categories {
                             completion(categories)
                        }
                    }
                }
            }
        }
    }
}
