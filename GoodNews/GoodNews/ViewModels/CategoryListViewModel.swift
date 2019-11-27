//
//  CategoryListViewModel.swift
//  GoodNews
//
//  Created by MarianaSouza on 11/26/19.
//  Copyright © 2019 MarianaSouza. All rights reserved.
//

import Foundation
import UIKit

struct CategoryListViewModel {
    private(set) var categories: [Category]
}

extension CategoryListViewModel {
    
    var numberOfSections : Int {
        return categories.count
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.categories[section].articles.count
    }
    
    func heightForHeaderInSection (_ section: Int) -> CGFloat {
        return 60.0
    }
}

extension CategoryListViewModel {
    func categoryAtIndex(index: Int) -> CategoryViewModel {
        return CategoryViewModel(name: categories[index].title, articles:categories[index].articles)
    }
    
    func articleForSectionAtIndex(section: Int, index: Int ) -> ArticleViewModel {
        return categoryAtIndex(index: section).articleAtIndex(index)
    }
}

struct CategoryViewModel {
    let name: String
    let articles: [Article]
}

extension CategoryViewModel {
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}
