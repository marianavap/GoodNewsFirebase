//
//  Webservice.swift
//  GoodNews
//
//  Created by itsector on 11/26/19.
//  Copyright © 2019 MarianaSouza. All rights reserved.
//

import Foundation

struct Resource <T> {
    let url: URL
    let parse : (Data) ->T?
}

class Webservice {
    
    func load<T>(_ resource: Resource<T>, completion: @escaping(T?) -> ()) {
        
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            
            if let data = data {
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            } else {
                completion(nil)
            }
            
        }.resume()
    }
}
