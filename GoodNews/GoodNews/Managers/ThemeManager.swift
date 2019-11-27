//
//  ThemeManager.swift
//  GoodNews
//
//  Created by MarianaSouza on 11/26/19.
//  Copyright © 2019 MarianaSouza. All rights reserved.
//

import Foundation
import UIKit

class ThemeManager {
    
    static func setup() {
        UINavigationBar.appearance().barTintColor = UIColor(displayP3Red: 47/255, green: 54/255, blue: 64/255, alpha: 1.0)
        
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
         UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
}
