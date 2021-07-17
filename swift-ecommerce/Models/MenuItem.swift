//
//  MenuItem.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/16/21.
//

import Foundation
import UIKit
class MenuItem: NSObject {
    
    var icon: UIImage?
    var title: String?
    
    init(icon: UIImage, title:String) {
        self.icon = icon;
        self.title = title;
    }
    
}
