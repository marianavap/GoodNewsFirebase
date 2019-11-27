//
//  Date+Extensions.swift
//  GoodNews
//
//  Created by MarianaSouza on 11/27/19.
//  Copyright © 2019 MarianaSouza. All rights reserved.
//

import Foundation

extension Date {
    
    static func dateAsStringForTableViewHeader() -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM dd"
        return formatter.string(from: Date())
    }
}
