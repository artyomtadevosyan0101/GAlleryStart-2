//
//  PictureInGenresCollectionViewCell.swift
//  GAlleryStart
//
//  Created by Armine on 1/8/22.
//

import UIKit

class PictureInGenresCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var someImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configure(str: String) {
        someImage.image = UIImage(named: str)
    }

}
