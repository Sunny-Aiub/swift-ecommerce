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
        5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
           return 1
        case 1:
          return  1
        case 2:
            return 1
        case 3:
            return 1
        case 4:
            return 1
        default:
          return  1
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
            
        case 0:
            let cell = myTableView.dequeueReusableCell(withIdentifier: TopBannerCell.identifier, for: indexPath) as! TopBannerCell
            cell.delegate = self
            
            return cell
            
            
        default:
            let cell = myTableView.dequeueReusableCell(withIdentifier: NormalCell.identifier, for: indexPath) as! NormalCell
            
            cell.accessoryType = .disclosureIndicator
            print(productViewModel.itemArray[indexPath.section].title)
            cell.leftIcon.image = productViewModel.itemArray[indexPath.section].icon
            cell.titleLbl.text = productViewModel.itemArray[indexPath.section].title
            
             return cell
            
        }

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return CGFloat(630)
        
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
