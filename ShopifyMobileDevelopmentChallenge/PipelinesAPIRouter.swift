//
//  PipelinesAPIRouter.swift
//  ShopifyMobileDevelopmentChallenge
//
//  Created by Kashish Goel on 2017-09-13.
//  Copyright © 2017 Kashish Goel. All rights reserved.
//

//
//  PipelinesAPIRouter.swift
//  HackTheNorth
//
//  Created by Aleem Dhanji on 2016-08-31.
//  Copyright © 2016 Techyon. All rights reserved.
//

import Foundation
import Alamofire

enum PipelinesAPIRouter: URLRequestConvertible {
    
    case getSales
    
    var method: HTTPMethod {
        return .get
    }
    
    func asURLRequest() throws -> URLRequest  {
        
        let urlString = "https://shopicruit.myshopify.com/admin/orders.json?page=1&access_token=c32313df0d0ef512ca64d5b336a0d7c6"
        let url = URL(string: urlString)
        var request = URLRequest(url: url!) //I wouldn't normally force unwrap this, but for the sake of simplicity I am
        request.httpMethod = method.rawValue
        
        return try URLEncoding.queryString.encode(request, with: nil)
    }
}


