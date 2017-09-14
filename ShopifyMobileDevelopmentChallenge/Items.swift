//
//  Items.swift
//  ShopifyMobileDevelopmentChallenge
//
//  Created by Kashish Goel on 2017-09-13.
//  Copyright © 2017 Kashish Goel. All rights reserved.
//

import Foundation
import Gloss

struct Item: Decodable {
    let name: String
    let price: Double
    
    init() {
        name = ""
        price = 0
    }
    
    // MARK: - Deserialization
    
    init?(json: JSON) {
        guard
            let name: String = "title" <~~ json,
            let price: String = "price" <~~ json
            else { return nil }
        
        self.name = name
        self.price = Double(price)!
    }
}
