//
//  UIView+Extensions.swift
//  GoodNews
//
//  Created by MarianaSouza on 11/27/19.
//  Copyright © 2019 MarianaSouza. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    static func viewForTableViewHeader (subtitle: String) -> UIView {
        
        let screenRect = UIScreen.main.bounds
        
        let subtitleView = UIView(frame: CGRect(origin: CGPoint.zero, size: CGSize(width:screenRect.size.width, height: 44)))
        
        let subtitleLabel = UILabel(frame: CGRect(origin: CGPoint.zero, size: CGSize(width: screenRect.width, height: 44)))
        
        subtitleLabel.text = subtitle
        subtitleLabel.textAlignment = .center
        subtitleLabel.textColor = UIColor.gray
        
        subtitleView.addSubview(subtitleLabel)
        return subtitleView
    }
    
    static func viewForSectionHeader(title: String) -> UIView {
        let screenRect = UIScreen.main.bounds
        let headerView = UIView(frame: CGRect(x: 15, y: 0, width: screenRect.width, height: 60))
        
        headerView.backgroundColor = UIColor.white
        
        let sectionHeaderLabel = UILabel(frame: headerView.frame)
        sectionHeaderLabel.text = title.uppercased()
        sectionHeaderLabel.textColor = UIColor.black
        sectionHeaderLabel.font = UIFont.fontForSectionHeader()
        
        headerView.addSubview(sectionHeaderLabel)
        
        return headerView
    }
}
