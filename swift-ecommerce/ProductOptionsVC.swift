//
//  ProductOptionsVC.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/17/21.
//

import UIKit

class ProductOptionsVC: UIViewController {

    @IBOutlet weak var optiontV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpView()
    }
    
    func setUpView(){
        
        
        
    }
    
    @IBAction func backClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
