//
//  Orders.swift
//  ShopifyMobileDevelopmentChallenge
//
//  Created by Kashish Goel on 2017-09-13.
//  Copyright © 2017 Kashish Goel. All rights reserved.
//

import Foundation
import Gloss

struct Orders: Decodable {
    let orders: [Order]?
    
    init() {
        self.orders = nil
    }
//
//    // MARK: - Deserialization
//    
    init?(json: JSON) {
        self.orders = "orders" <~~ json
    }
}
