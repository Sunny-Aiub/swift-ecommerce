//
//  ShippingCell.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/19/21.
//

import UIKit

class ShippingCell: UITableViewCell {

    @IBOutlet weak var backView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    
    func setUpView() {
        self.backView.backgroundColor = .clear
        self.backView.layer.borderWidth = 1
        self.backView.layer.borderColor =  UIColor.separator.cgColor
        self.backView.layer.cornerRadius = 4
        self.selectionStyle = .none

    }
    
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    
}
