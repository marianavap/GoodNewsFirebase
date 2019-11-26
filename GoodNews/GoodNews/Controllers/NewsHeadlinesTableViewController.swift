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
    
    var news = [["title": "this is the title", "description": "this is the description description: this is the description"], ["title": "this is the title this is the title", "description": "this is the description description: this is the description this is the description description: this is the description this is the description description: this is the description"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI () {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.news.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsHeadlineTableViewCell", for: indexPath) as? NewsHeadlineTableViewCell  else {
            
            fatalError("NewsHeadlineTableViewCell not found")
            
        }
        
        cell.titleLabel.text = self.news[indexPath.row]["title"]
        cell.descriptionLabel.text = self.news[indexPath.row]["description"]
        
        return cell
    }
}
