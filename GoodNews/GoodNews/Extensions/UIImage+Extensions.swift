//
//  UIImage+Extensions.swift
//  GoodNews
//
//  Created by itsector on 11/26/19.
//  Copyright © 2019 MarianaSouza. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    
    static func imageForPlaceHolder() -> UIImage {
        return UIImage(named: "placeholder")!
    }
    
    static func imageForHeadline (url: String, compleation: @escaping (UIImage) -> ()) {
        guard let imageURL = URL (string: url) else {
            compleation(UIImage.imageForPlaceHolder())
            return
        }
        
        DispatchQueue.global().async {
            if let data = try? Data (contentsOf: imageURL){
                if let downloadImage = UIImage(data: data) {
                    compleation(downloadImage)
                }
            }
        }
    }
}
