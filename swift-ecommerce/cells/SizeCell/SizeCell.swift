//
//  SizeCell.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/18/21.
//

import UIKit

class SizeCell: UICollectionViewCell {

    @IBOutlet weak var lblSize: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    
    func setUpView() {
        self.lblSize.backgroundColor = .clear
        self.lblSize.layer.borderWidth = 1
        self.lblSize.layer.borderColor =  UIColor.separator.cgColor
        self.lblSize.layer.cornerRadius = 4

    }
    
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    func setSelectedCell(indexPath: IndexPath) {
        self.lblSize.layer.borderColor =  UIColor.green.cgColor
    }
    
    func setDeSelectCell(indexPath: IndexPath) {
        self.lblSize.layer.borderColor =  UIColor.separator.cgColor
    }
    
    
}
