//
//  PipelinesAPI.swift
//  ShopifyMobileDevelopmentChallenge
//
//  Created by Kashish Goel on 2017-09-13.
//  Copyright © 2017 Kashish Goel. All rights reserved.
//

import Foundation
import Alamofire
import Gloss

class PipelinesAPI {
    class func getSales(success: ((_ response: JSON) -> Void)?, failure: @escaping (_ errorMessage: String) -> Void) {
        Alamofire.request(PipelinesAPIRouter.getSales)
            .validate()
            .responseJSON { response in
                if let responseJSON = response.result.value as? JSON {
                    success?(responseJSON)
                    print(responseJSON)
                } else if let data = response.data {
                    //error handling here
                    
                }
        }
    }
}
