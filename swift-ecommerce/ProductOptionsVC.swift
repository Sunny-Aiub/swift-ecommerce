//
//  ProductOptionsVC.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/17/21.
//

import UIKit

class ProductOptionsVC: UIViewController {
    
    @IBOutlet weak var optiontV: UITableView!
    
    var productImages  =  [UIImage(named: "Image 3")!,UIImage(named: "2")!]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
     }
    
    func setUpView(){
        
        self.optiontV.separatorInset = .zero
        optiontV.register(OptionsTopCell.nib, forCellReuseIdentifier: OptionsTopCell.identifier)
        optiontV.register(ShippingCell.nib, forCellReuseIdentifier: ShippingCell.identifier)
        
    }
     
    @IBAction func backClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
