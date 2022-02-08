//
//  MyPicturesViewController.swift
//  GAlleryStart
//
//  Created by Armine on 1/7/22.
//

import UIKit

class MyPicturesViewController: UIViewController {

    var myPictures = ["piture1", "piture2", "piture3"]
    let conteins : CGFloat = 12
    
    @IBOutlet weak var myPicturesCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    func getConfigurations() {
        
        myPicturesCollectionView.dataSource = self
        myPicturesCollectionView.delegate = self
        myPicturesCollectionView.register(UINib(nibName: "MyPicturesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MyPicturesCollectionViewCell")
    }
    
    @IBAction func dismiss(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}


extension MyPicturesViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myPictures.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyPicturesCollectionViewCell", for: indexPath) as? MyPicturesCollectionViewCell else {
            return UICollectionViewCell()
        }
        let picture = myPictures[indexPath.row]
        cell.configure(str: picture)
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return self.sizeInItem(viewItem: myPicturesCollectionView)
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
           
            return UIEdgeInsets(top: conteins, left: conteins, bottom: conteins, right: conteins)
        }
        
        func sizeInItem(viewItem: UICollectionView) -> CGSize {
            let widht = viewItem.layer.bounds.width
            let itemWidht = (widht - (conteins * 3)) / 2
            let itemHeight = itemWidht * 2
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
