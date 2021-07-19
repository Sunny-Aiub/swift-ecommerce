//
//  TopBannerCellExt.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/17/21.
//

import Foundation
import UIKit


extension TopBannerCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imageCollectionView.dequeueReusableCell(withReuseIdentifier: ImageCell.identifier, for: indexPath) as! ImageCell
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.delegate?.buttonDidClicked(result: indexPath.row)
        
    }
}

extension TopBannerCell:  UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if self.imageCollectionView != nil{
            return CGSize(width: 61, height: 61)
        }else{
            return CGSize(width: 0, height: 0)
        }
    }
    
}
