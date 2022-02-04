//
//  MyAccountViewController.swift
//  GAlleryStart
//
//  Created by Armine on 12/8/21.
//

import UIKit


class MyAccountViewController: UIViewController{
    
    var imagePicker = UIImagePickerController()
    
    var isTrue: Bool = true
    private var isMenuShown: Bool = false
    private var beginPoint: CGFloat = 0.0
    private var difference: CGFloat = 0.0
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var follows: UIButton!
    @IBOutlet weak var followers: UIButton!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var idUsername: UILabel!
    @IBOutlet weak var logOut: UIButton!
    @IBOutlet weak var myPicturesLabel: UILabel!
    @IBOutlet weak var myPicture1: UIImageView!
    @IBOutlet weak var myPicture2: UIImageView!
    @IBOutlet weak var myPicture3: UIImageView!
    @IBOutlet weak var myPicture4: UIImageView!
    @IBOutlet weak var myPicturesButton: UIButton!
    @IBOutlet weak var addNewPictureButton: UIButton!
    @IBOutlet weak var logOutView: UIView!
    @IBOutlet weak var addNewPictures: UIView!
    
    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var backViewForLogOut: UIView!
    
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var leadingConstraintForMenuView: NSLayoutConstraint!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //profilePicture.layer.cornerRadius = 60
        logOutView.alpha = 0
        addNewPictures.alpha = 0
        backViewForLogOut.alpha = 0
        logOut.alpha = 1
       // backViewForAdd.alpha = 0
        getCornerRadius()
        
        
    }
        
    var menuViewController : MenuViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "menuSegue2")
        {
            if let controller = segue.destination as? MenuViewController
            {
                self.menuViewController = controller
                self.menuViewController?.delegate = self
            }
        }
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if (isMenuShown)
        {
            if let touch = touches.first
            {
                let location = touch.location(in: backViewForLogOut)
                
                let differenceFromBeginPoint = beginPoint - location.x
                
                if (differenceFromBeginPoint>0 || differenceFromBeginPoint<280)
                {
                    difference = differenceFromBeginPoint
                    self.leadingConstraintForMenuView.constant = -differenceFromBeginPoint
                    self.backViewForLogOut.alpha = 0.75-(0.75*differenceFromBeginPoint/280)
                }
            }
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if (isMenuShown)
        {
            if let firstTouch = touches.first {
                   let hitView = self.view.hitTest(firstTouch.location(in: self.view), with: event)

                   if hitView === menuView {
                       //hideMenu()
                       print("touch is inside")
                   } else {
                       hideMenu()
                       print("touch is outside")
                   }
               }
            
            if (difference>140)
            {
                UIView.animate(withDuration: 0.1) {
                    self.leadingConstraintForMenuView.constant = -290
                } completion: { (status) in
                    self.backViewForLogOut.alpha = 0.0
                    self.isMenuShown = false
                    self.backViewForLogOut.isHidden = true
                }
            }
            else{
                UIView.animate(withDuration: 0.1) {
                    self.leadingConstraintForMenuView.constant = -10
                } completion: { (status) in
                    self.backViewForLogOut.alpha = 0.75
                    self.isMenuShown = true
                    self.backViewForLogOut.isHidden = false
                }
            }
        }
    }
    
    func getCornerRadius() {
        let imageViews: [UIImageView] = [myPicture1, myPicture2, myPicture3, myPicture4]
        imageViews.forEach{ Utils.getCornerRadiusToImageView(instance: $0, radius: CGFloat(myPicture1.frame.height/2))}
        
        Utils.getCornerRadiusToButton(instance: myPicturesButton, radius: CGFloat(myPicturesButton.bounds.height/2))
        
        Utils.getCornerRadiusToImageView(instance: profilePicture, radius: 50)
        profilePicture.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        Utils.getCornerRadiusToImageView(instance: background, radius: 150)
        background.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!){
        self.dismiss(animated: true, completion: { () -> Void in

        })

//        imageView.image = image
    }
        
    @IBAction func logOut(_ sender: UIButton) {
        if isTrue {
            logOutView.alpha = 1
            backViewForLogOut.alpha = 0.75
            
        } else {
            logOutView.alpha = 0
            backViewForLogOut.alpha = 0
            
        }
        isTrue = !isTrue
        
        
    }
    
    @IBAction func follows(_ sender: UIButton) {
        Utils.toFollowsVC(target: self)
    }
    @IBAction func followers(_ sender: UIButton) {
        Utils.toFollowersVC(target: self)
    }
    @IBAction func myPictures(_ sender: UIButton) {
        Utils.toMyPicturesVC(target: self)
    }
    
    @IBAction func addPicture(_ sender: UIButton) {
//
//        if isTrue {
//            addNewPictures.alpha = 1
//            logOutView.alpha = 0
//            backViewForLogOut.alpha = 0.75
//            logOut.alpha = 0
//        } else {
//            addNewPictures.alpha = 0
//            backViewForLogOut.alpha = 0
//            logOut.alpha = 1
//
//        }
//        isTrue = !isTrue
//
        
//
//        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
//            print("Button capture")
//
//            imagePicker.delegate = self
//            imagePicker.sourceType = .savedPhotosAlbum
//            imagePicker.allowsEditing = false
//
//            present(imagePicker, animated: true, completion: nil)
//        }
        let imagePickerController = UIImagePickerController()
               imagePickerController.delegate = self
               let actionSheet = UIAlertController(title: "Photo source", message: "Choose a source", preferredStyle: .actionSheet)
               actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action:UIAlertAction) in
                   imagePickerController.sourceType = .camera
               }))
               actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (action:UIAlertAction) in
                   imagePickerController.sourceType = .photoLibrary
                   self.present(imagePickerController, animated: true, completion: nil)
               }))
               actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
               self.present(actionSheet, animated: true, completion: nil)
        
    }
    
    @IBAction func toNotifications(_ sender: UIButton) {
        Utils.toNotificationsVC(target: self)
    }
    
    
    @IBAction func edit(_ sender: UIButton) {
        
        Utils.toEditProfileVC(target: self)
    }
    
    @IBAction func showMenu(_ sender: Any) {
        
        UIView.animate(withDuration: 0.6) {
            self.leadingConstraintForMenuView.constant = 10
            self.view.layoutIfNeeded()
        } completion: { (status) in
            self.backViewForLogOut.alpha = 0.75
            self.backViewForLogOut.isHidden = false
            UIView.animate(withDuration: 0.1) {
                self.leadingConstraintForMenuView.constant = 0
                self.view.layoutIfNeeded()
            } completion: { (status) in
                self.isMenuShown = true
            }
        }
    }
    
    
}

extension MyAccountViewController: MenuViewControllerDelegate {
    func hideMenu() {
        UIView.animate(withDuration: 0.1) {
            self.leadingConstraintForMenuView.constant = 10
            self.view.layoutIfNeeded()
        } completion: { (status) in
            self.backViewForLogOut.alpha = 0.0
            UIView.animate(withDuration: 0.1) {
                self.leadingConstraintForMenuView.constant = -280
                self.view.layoutIfNeeded()
            } completion: { (status) in
                self.backViewForLogOut.isHidden = true
                self.isMenuShown = false
            }
        }
        // hideMenuView()
    }
    
    private func hideMenuView()
    {
        
    }
    
    
}

extension MyAccountViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
}

