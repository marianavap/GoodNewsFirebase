//
//  Category.swift
//  GoodNews
//
//  Created by MarianaSouza on 11/26/19.
//  Copyright © 2019 MarianaSouza. All rights reserved.
//

import Foundation

struct Category {
    
    let title : String
    let articles : [Article]
    
    static func all () -> [String] {
        return ["Business", "Entertainment", "General", "Sports"]
    }
}
