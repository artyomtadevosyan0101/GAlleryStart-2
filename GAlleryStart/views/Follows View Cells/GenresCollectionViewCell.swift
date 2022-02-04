//
//  genresCollectionViewCell.swift
//  GAlleryStart
//
//  Created by Armine on 1/8/22.
//

import UIKit

class GenresCollectionViewCell: UICollectionViewCell {

    var pictures = ["piture1", "piture2", "piture3", "piture4"]
    let conteins : CGFloat = 8
    
    @IBOutlet weak var picturesCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        picturesCollectionView.dataSource = self
        picturesCollectionView.delegate = self
        picturesCollectionView.register(UINib(nibName: "PictureInGenresCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PictureInGenresCollectionViewCell")
    }

}

extension GenresCollectionViewCell: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PictureInGenresCollectionViewCell", for: indexPath) as? PictureInGenresCollectionViewCell else {
            return UICollectionViewCell()
        }
        let picture = pictures[indexPath.row]
        cell.configure(str: picture)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return self.sizeInItem(viewItem: picturesCollectionView)
    }
    
    // top or bottom
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return conteins
}

// right or left
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {

    return conteins
}
    
    func sizeInItem(viewItem: UICollectionView) -> CGSize {
        let widht = viewItem.layer.bounds.width
        let itemWidht = (widht - (conteins * 3)) / 2
        let itemHeight = itemWidht
        return CGSize(width: itemWidht, height: itemHeight)
    }
}
