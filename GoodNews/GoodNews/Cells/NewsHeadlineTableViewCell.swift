//
//  NewsHeadlineTableViewCell.swift
//  GoodNews
//
//  Created by MarianaSouza on 11/26/19.
//  Copyright © 2019 MarianaSouza. All rights reserved.
//

import Foundation
import UIKit

class NewsHeadlineTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel : UILabel!
    @IBOutlet weak var descriptionLabel : UILabel!
    @IBOutlet weak var headlineImageView: UIImageView!
}

extension NewsHeadlineTableViewCell {
    
    func configure (vm: ArticleViewModel) {
        self.titleLabel.text = vm.title
        self.descriptionLabel.text = vm.description
        vm.image {
            self.headlineImageView.image = $0
        }
    }
    
}
