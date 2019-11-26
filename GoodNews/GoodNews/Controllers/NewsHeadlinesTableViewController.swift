//
//  NewsHeadlinesTableViewController.swift
//  GoodNews
//
//  Created by itsector on 11/26/19.
//  Copyright © 2019 MarianaSouza. All rights reserved.
//

import Foundation
import UIKit

class NewsHeadlinesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        populateHeadlinesAndArticles()
    }
    
    private func setupUI () {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func populateHeadlinesAndArticles () {
        CategoryService().getAllHeadlineForAllCategories { categories in
            print(categories)
        }
    }
}
