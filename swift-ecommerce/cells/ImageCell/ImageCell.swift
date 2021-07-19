//
//  ImageCell.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/17/21.
//

import UIKit

class ImageCell: UICollectionViewCell {

    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    func setUpView() {
        self.imgView.layer.borderWidth = 1
        self.imgView.layer.borderColor =  UIColor.separator.cgColor
        self.imgView.layer.cornerRadius = 4

    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    func setSelectedCell(indexPath: IndexPath) {
        self.imgView.layer.borderColor =  UIColor.green.cgColor
    }
    
    func setDeSelectCell(indexPath: IndexPath) {
        self.imgView.layer.borderColor =  UIColor.separator.cgColor
    }

}
