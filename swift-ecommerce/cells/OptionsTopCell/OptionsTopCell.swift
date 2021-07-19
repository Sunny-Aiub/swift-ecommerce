//
//  OptionsTopCell.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/18/21.
//

import UIKit

class OptionsTopCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnPrevious: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var imageCollectionView: UICollectionView!
    @IBOutlet weak var sizeCollectionView: UICollectionView!
    @IBOutlet weak var btnMinus: UIButton!
    @IBOutlet weak var btnPlus: UIButton!
    
    var delegate: ImageClickProtocol?
    var sizesArray = ["S", "M", "L", "XL"]
    var productImages  =  Array<UIImage>()

    var imageIndex = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()

    }

    func setUpUI() {
        
        if (self.productImages.count != 0){
            self.imgView.image = self.productImages[0]
        }
        btnNext.layer.cornerRadius = 20
        btnPrevious.layer.cornerRadius = 20
        imgView.layer.cornerRadius = 8
        btnPlus.layer.cornerRadius = 15
        btnMinus.layer.cornerRadius = 15
        self.selectionStyle = .none
        imageCollectionView.register(ImageCell.nib, forCellWithReuseIdentifier: ImageCell.identifier)
        imageCollectionView.dataSource = self
        imageCollectionView.delegate  = self
        
        sizeCollectionView.register(SizeCell.nib, forCellWithReuseIdentifier: SizeCell.identifier)
        sizeCollectionView.dataSource = self
        sizeCollectionView.delegate  = self

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
    
    @IBAction func nextClicked(_ sender: Any) {
        
        print("nextClicked")
        self.imageIndex = self.imageIndex + 1
        setUpImageView(index :  self.imageIndex)
    }
    
    @IBAction func previousClicked(_ sender: Any) {
        print("previousClicked")
        self.imageIndex = self.imageIndex - 1
        setUpImageView(index :  self.imageIndex)


    }
    
    func setUpImageView(index: Int) {
        
        if( index > -1 && index < self.productImages.count){
            self.imgView.image = self.productImages[imageIndex]
        }
        if index == 0 {
            self.btnNext.isHidden = false
            self.btnPrevious.isHidden = true
        } else if index == self.productImages.count - 1 {
            self.btnNext.isHidden = true
            self.btnPrevious.isHidden = false
        }
    }
    
}
