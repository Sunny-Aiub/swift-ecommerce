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
        //UIColor(red: 0.792, green: 0.894, blue: 0.901, alpha: 1.0)
            //rgba(236, 236, 236, 1)// UIColor.systemGray.cgColor
        self.imgView.layer.cornerRadius = 4
        
        
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    

}
