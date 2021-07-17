//
//  ProductViewModel.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/16/21.
//

import Foundation
import UIKit

class ProductViewModel: NSObject {
    var itemArray = Array<MenuItem>()

    override init() {
        itemArray = [
            MenuItem(icon: UIImage(), title: "Top"),
            MenuItem(icon: #imageLiteral(resourceName: "fast-delivery"), title: "Shipping"),
            MenuItem(icon: #imageLiteral(resourceName: "Group 8423"), title: "Specifications"),
            MenuItem(icon: #imageLiteral(resourceName: "Group 8421"), title: "Reviews"),
            MenuItem(icon: #imageLiteral(resourceName: "Group 8424"), title: "How to Order"),
            MenuItem(icon: #imageLiteral(resourceName: "Group 8425"), title: "FAQ"),
            MenuItem(icon: #imageLiteral(resourceName: "Group 8426"), title: "Wholesale Inquiry"),
            MenuItem(icon: #imageLiteral(resourceName: "Group 8420"), title: "Descriptions"),
        ]
    }

    
}
