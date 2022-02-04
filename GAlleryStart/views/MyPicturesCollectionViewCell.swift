//
//  MyPicturesCollectionViewCell.swift
//  GAlleryStart
//
//  Created by Armine on 1/8/22.
//

import UIKit

class MyPicturesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var myPicture: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .red
        
//        myPicture.layer.masksToBounds = true
       // myPicture.clipsToBounds = true
//        myPicture.frame.size = self.frame.size
    }
    func configure(str: String) {
        myPicture.image = UIImage(named: str)
        //myPicture = UIImageView(image: UIImage(named: str))
//        myPicture.frame = contentView.frame
//        myPicture.contentMode = .scaleAspectFit
     
    }
}
