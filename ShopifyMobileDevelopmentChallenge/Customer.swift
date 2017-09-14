//
//  Customer.swift
//  ShopifyMobileDevelopmentChallenge
//
//  Created by Kashish Goel on 2017-09-13.
//  Copyright © 2017 Kashish Goel. All rights reserved.
//

import Foundation
import Gloss

struct Customer: Decodable {
    let name: String
    init() {
        name = ""
    }
    
    // MARK: - Deserialization
    
    init?(json: JSON) {
        guard
            let name: String = "first_name" <~~ json
            else { return nil }

        self.name = name
    }
}
