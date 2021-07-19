//
//  OptionTableViewExt.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/18/21.
//

import Foundation
import UIKit
extension ProductOptionsVC: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        
        case 0:
            let cell = optiontV.dequeueReusableCell(withIdentifier: OptionsTopCell.identifier, for: indexPath) as! OptionsTopCell
            cell.productImages = self.productImages
            
            return cell
            
            case 1:
                let cell = optiontV.dequeueReusableCell(withIdentifier: ShippingCell.identifier, for: indexPath) as! ShippingCell
    //            cell.delegate = self
                
                return cell
                
            
        default:
            
            return UITableViewCell()
            
        }
        
    }
     
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return CGFloat(610)
        case 1:
            return CGFloat(100)
           
        default:
            return 60
        }
    }
    
}
