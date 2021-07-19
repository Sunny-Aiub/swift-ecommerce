//
//  ViewController.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/16/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var lblBadge: UILabel!
    
    var productViewModel: ProductViewModel = ProductViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setview()

    }

    func setview(){
        
        self.myTableView.separatorInset = .zero
        myTableView.register(TopBannerCell.nib, forCellReuseIdentifier: TopBannerCell.identifier)
        myTableView.register(NormalCell.nib, forCellReuseIdentifier: NormalCell.identifier)
        myTableView.register(ShippingCell.nib, forCellReuseIdentifier: ShippingCell.identifier)
        myTableView.register(DescriptionCell.nib, forCellReuseIdentifier: DescriptionCell.identifier)

        lblBadge.layer.masksToBounds = true
        lblBadge.layer.cornerRadius = 12
        
    }


}

