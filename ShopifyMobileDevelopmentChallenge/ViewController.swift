//
//  ViewController.swift
//  ShopifyMobileDevelopmentChallenge
//
//  Created by Kashish Goel on 2017-09-13.
//  Copyright © 2017 Kashish Goel. All rights reserved.
//

import UIKit
import Gloss
class ViewController: UIViewController {
    var orders: Orders?
    var sum = 0.0
    var totalBags = 0
    @IBOutlet weak var napoleanSalesLabel: UILabel!
    
    @IBOutlet weak var totalBagsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        PipelinesAPI.getSales(success: { (json) in
            if let orders = Orders.init(json: json) {
                for order in orders.orders! {
                    if order.customer?.name == "Napoleon" {
                        
                        
                        for item in order.items! {
                            self.sum += item.price
                        }
                    }
                    
                    for item in order.items! {
                        if item.name == "Awesome Bronze Bag" {
                            self.totalBags += 1
                        }
                    }
                }
                
                let price = String(format: "%.2f", self.sum)
                
                self.napoleanSalesLabel.text = "Napoleon Batz spent $" + price
                self.totalBagsLabel.text = "Total number of Awesome Bronze Bags sold is: \(self.totalBags)"
            }
        }) { (error) in
            //handle error
        }
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

