//
//  NewsDetailsViewController.swift
//  GoodNews
//
//  Created by MarianaSouza on 11/27/19.
//  Copyright © 2019 MarianaSouza. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class NewsDetailsViewController: UIViewController {
    
    var article: Article!
    private var newsDetailVM: NewsDetailsViewModel!
    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI () {
        self.newsDetailVM = NewsDetailsViewModel(article)
        
        self.navigationItem.largeTitleDisplayMode = .never
        self.title = self.newsDetailVM.sourceName
        
        guard let url = self.newsDetailVM.url, let newsDetailURL = URL (string: url) else {
            return
        }
        
        let request = URLRequest(url: newsDetailURL)
        self.webview.load(request)
    }
}
