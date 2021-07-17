//
//  ViewController.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/16/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var productViewModel: ProductViewModel = ProductViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setview()

    }

    func setview(){
        
        self.myTableView.separatorInset = .zero
        myTableView.register(TopBannerCell.nib, forCellReuseIdentifier: TopBannerCell.identifier)
        myTableView.register(NormalCell.nib, forCellReuseIdentifier: NormalCell.identifier)
        
    }


}

