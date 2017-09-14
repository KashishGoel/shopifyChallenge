//
//  Order.swift
//  ShopifyMobileDevelopmentChallenge
//
//  Created by Kashish Goel on 2017-09-13.
//  Copyright © 2017 Kashish Goel. All rights reserved.
//

import Foundation
import Gloss

struct Order: Decodable {
    let customer: Customer?
    let items: [Item]?

    init() {
        customer = nil
        items = nil
    }

    // MARK: - Deserialization
    
    init?(json: JSON) {
        self.customer = "customer" <~~ json
        self.items = "line_items" <~~ json
    }
}
