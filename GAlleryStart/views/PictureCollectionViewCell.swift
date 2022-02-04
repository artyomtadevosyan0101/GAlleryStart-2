//
//  PictureCollectionViewCell.swift
//  GAlleryStart
//
//  Created by Armine on 12/8/21.
//

import UIKit

class PictureCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var someImage: UIImageView!
    
    func configure(str: String) {
        someImage.image = UIImage(named: str)
        //movieName.text = str
    }
}
