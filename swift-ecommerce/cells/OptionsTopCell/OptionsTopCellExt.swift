//
//  OptionsTopCellExt.swift
//  swift-ecommerce
//
//  Created by Sunny Chowdhury on 7/18/21.
//

import Foundation

import Foundation
import UIKit


extension OptionsTopCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.imageCollectionView {
            return 6
        } else if collectionView == self.sizeCollectionView {
            return self.sizesArray.count

        }else {
            return 0
        }
         
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.imageCollectionView {
            let cell = imageCollectionView.dequeueReusableCell(withReuseIdentifier: ImageCell.identifier, for: indexPath) as! ImageCell
            
            
            return cell
            
        } else if collectionView == self.sizeCollectionView {
            let cell = sizeCollectionView.dequeueReusableCell(withReuseIdentifier: SizeCell.identifier, for: indexPath) as! SizeCell
            cell.lblSize.text = self.sizesArray[indexPath.row]
            return cell
        }else {
            return UICollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == self.imageCollectionView {
            let cell:ImageCell = collectionView.cellForItem(at: indexPath) as! ImageCell
            cell.setSelectedCell(indexPath: indexPath)
            
        } else if collectionView == self.sizeCollectionView {
           
            let cell:SizeCell = collectionView.cellForItem(at: indexPath) as! SizeCell
            cell.setSelectedCell(indexPath: indexPath)

        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if collectionView == self.imageCollectionView {
            let cell:ImageCell = collectionView.cellForItem(at: indexPath) as! ImageCell
            cell.setDeSelectCell(indexPath: indexPath)
            
        } else if collectionView == self.sizeCollectionView {
           
            let cell:SizeCell = collectionView.cellForItem(at: indexPath) as! SizeCell
            cell.setDeSelectCell(indexPath: indexPath)

        }
    }
}

extension OptionsTopCell:  UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.imageCollectionView {
            return CGSize(width: 61, height: 61)
        }
        else if collectionView == self.sizeCollectionView {
            return CGSize(width: 61, height: 40)
        }
        else{
            return CGSize(width: 0, height: 0)
        }
    }
    
}
