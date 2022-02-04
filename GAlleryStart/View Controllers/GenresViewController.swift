//
//  GenresViewController.swift
//  GAlleryStart
//
//  Created by Armine on 1/8/22.
//

import UIKit

class GenresViewController: UIViewController {
    
    @IBOutlet weak var followingGenresCollectionView: UICollectionView!
    
    var followingGenres = [String]()
    let conteins : CGFloat = 8
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getConfiguratons()
    }
    
    func getConfiguratons() {
        
        followingGenresCollectionView.dataSource = self
        followingGenresCollectionView.delegate = self
        
        followingGenresCollectionView.register(UINib(nibName: "GenresCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GenresCollectionViewCell")
    }
    
    
}

extension GenresViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GenresCollectionViewCell", for: indexPath) as? GenresCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return self.sizeInItem(viewItem: followingGenresCollectionView)
    }
    
    func sizeInItem(viewItem: UICollectionView) -> CGSize {
        let widht = viewItem.layer.bounds.width
        let itemWidht = (widht - (conteins * 3)) / 2
        let itemHeight = itemWidht
        return CGSize(width: itemWidht, height: itemHeight)
    }
    
    // top or bottom
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return conteins
    }
    
    // right or left
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return conteins
    }
    
}
