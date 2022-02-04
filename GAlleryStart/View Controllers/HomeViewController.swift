//
//  ViewController.swift
//  GAllery
//
//  Created by Armine on 12/8/21.
//
import UIKit



class HomeViewController: UIViewController {
    
    
    
    private var isMenuShown: Bool = false
    private var beginPoint: CGFloat = 0.0
    private var difference: CGFloat = 0.0
    
    let pictures = ["piture1", "piture2", "piture3", "piture4", "piture5", "piture6", "piture8", "piture9", "piture3"]
    let conteins : CGFloat = 8
    
    @IBOutlet weak var homeItem: UITabBarItem!
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var backViewForMenu: UIView!
    @IBOutlet weak var homeView: UIView!
    
    @IBOutlet weak var leadingConstraintForMenuView: NSLayoutConstraint!
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var picturesCollectionView: UICollectionView!
    @IBOutlet weak var search: UITextField!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCornerRadius()
        
        picturesCollectionView.dataSource = self
        picturesCollectionView.delegate = self
        
        backViewForMenu.isHidden = true
        
       
        
        
    }
    
    func getCornerRadius() {
        Utils.getCornerRadiusToTextFields(instance: search, radius: Utils.radius25)

    }
    
    
    @IBAction func menuButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.6) {
            self.leadingConstraintForMenuView.constant = 10
            self.view.layoutIfNeeded()
        } completion: { (status) in
            self.backViewForMenu.alpha = 0.75
            self.backViewForMenu.isHidden = false
            UIView.animate(withDuration: 0.1) {
                self.leadingConstraintForMenuView.constant = 0
                self.view.layoutIfNeeded()
            } completion: { (status) in
                self.isMenuShown = true
            }
        }
    }
    
    @IBAction func accountButton(_ sender: UIButton) {
        Utils.toLogInVC(target: self)
    }
    
    
    var menuViewController : MenuViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "menuSegue")
        {
            if let controller = segue.destination as? MenuViewController
            {
                self.menuViewController = controller
                self.menuViewController?.delegate = self
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if (isMenuShown)
        {
            if let touch = touches.first
            {
                let location = touch.location(in: backViewForMenu)
                beginPoint = location.x
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if (isMenuShown)
        {
            if let touch = touches.first
            {
                let location = touch.location(in: backViewForMenu)
                
                let differenceFromBeginPoint = beginPoint - location.x
                
                if (differenceFromBeginPoint>0 || differenceFromBeginPoint<280)
                {
                    difference = differenceFromBeginPoint
                    self.leadingConstraintForMenuView.constant = -differenceFromBeginPoint
                    self.backViewForMenu.alpha = 0.75-(0.75*differenceFromBeginPoint/280)
                }
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if (isMenuShown)
        {
            if (difference>140)
            {
                UIView.animate(withDuration: 0.1) {
                    self.leadingConstraintForMenuView.constant = -290
                } completion: { (status) in
                    self.backViewForMenu.alpha = 0.0
                    self.isMenuShown = false
                    self.backViewForMenu.isHidden = true
                }
            }
            else{
                UIView.animate(withDuration: 0.1) {
                    self.leadingConstraintForMenuView.constant = -10
                } completion: { (status) in
                    self.backViewForMenu.alpha = 0.75
                    self.isMenuShown = true
                    self.backViewForMenu.isHidden = false
                }
            }
        }
    }
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pictures.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PictureCollectionViewCell", for: indexPath) as? PictureCollectionViewCell else {
            return UICollectionViewCell()
        }
        let picture = pictures[indexPath.row]
        cell.configure(str: picture)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return self.sizeInItem(viewItem: picturesCollectionView)
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

extension HomeViewController: MenuViewControllerDelegate {
    func hideMenu() {
        UIView.animate(withDuration: 0.1) {
            self.leadingConstraintForMenuView.constant = 10
            self.view.layoutIfNeeded()
        } completion: { (status) in
            self.backViewForMenu.alpha = 0.0
            UIView.animate(withDuration: 0.1) {
                self.leadingConstraintForMenuView.constant = -280
                self.view.layoutIfNeeded()
            } completion: { (status) in
                self.backViewForMenu.isHidden = true
                self.isMenuShown = false
            }
        }
        // hideMenuView()
    }
    
    private func hideMenuView()
    {
        
    }
}

