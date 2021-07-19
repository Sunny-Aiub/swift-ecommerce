//
//  MyTableViewExt.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/16/21.
//

import Foundation
import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.productViewModel.itemArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        
        case 0:
            let cell = myTableView.dequeueReusableCell(withIdentifier: TopBannerCell.identifier, for: indexPath) as! TopBannerCell
            cell.delegate = self
            
            return cell
            
            
        case 1:
            let cell = myTableView.dequeueReusableCell(withIdentifier: ShippingCell.identifier, for: indexPath) as! ShippingCell
            
            return cell
            
            
        case 7:
            let cell = myTableView.dequeueReusableCell(withIdentifier: DescriptionCell.identifier, for: indexPath) as! DescriptionCell
            
            return cell
            
            
        default:
            let cell = myTableView.dequeueReusableCell(withIdentifier: NormalCell.identifier, for: indexPath) as! NormalCell
            
            cell.accessoryType = .disclosureIndicator
            cell.leftIcon.image = productViewModel.itemArray[indexPath.section].icon
            cell.titleLbl.text = productViewModel.itemArray[indexPath.section].title
            
            return cell
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return CGFloat(680)
        case 1:
            return CGFloat(100)
        case 7:
            return CGFloat(750)
        default:
            return 60
        }
    }
    
}

extension ViewController: ImageClickProtocol{
    func buttonDidClicked(result: Int) {
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "ProductOptionsVC") as! ProductOptionsVC
        self.present(viewController, animated: true, completion: nil)
        
    }
    
    
}
