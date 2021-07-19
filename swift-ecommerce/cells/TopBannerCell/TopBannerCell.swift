//
//  TopBannerCell.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/16/21.
//

import UIKit

class TopBannerCell: UITableViewCell {

    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnSearch: UIButton!
    @IBOutlet weak var btnMore: UIButton!
    @IBOutlet weak var rightView: UIView!
    @IBOutlet weak var lblOldPrice: UILabel!
    @IBOutlet weak var lblDiscount: UILabel!
    @IBOutlet weak var imageCollectionView: UICollectionView!
    
    let spacing:CGFloat = 4
    var delegate: ImageClickProtocol?


    override func awakeFromNib() {
        super.awakeFromNib()

        setUpUI()
        
    }
    
    func setUpUI()  {
        self.btnBack.layer.cornerRadius = 20
        self.rightView.layer.cornerRadius = 16
        self.lblDiscount.layer.cornerRadius = 16
        self.selectionStyle = .none

        let origImage = UIImage(named: "icons8-menu-vertical-50")
        let tintedImage = origImage?.withRenderingMode(.alwaysTemplate)
        btnMore.setImage(tintedImage, for: .normal)
        btnMore.tintColor = .white
        
        let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: "BDT. 3,050")
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
        lblOldPrice.attributedText = attributeString
        
        
        imageCollectionView.register(ImageCell.nib, forCellWithReuseIdentifier: ImageCell.identifier)
        imageCollectionView.dataSource = self
        imageCollectionView.delegate  = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
}
