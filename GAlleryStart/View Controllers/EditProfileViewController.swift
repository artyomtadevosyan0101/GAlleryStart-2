//
//  ChangeProfileViewController.swift
//  GAlleryStart
//
//  Created by Armine on 12/17/21.
//

import UIKit
import Localize_Swift

class EditProfileViewController: UIViewController {
    
    var isTrue: Bool = true
    var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var editTitleLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var changeBackground: UIButton!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var changeProfileImage: UIButton!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var idUsername: UITextField!
    @IBOutlet weak var stackview: UIStackView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var male: UIButton!
    @IBOutlet weak var female: UIButton!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var changePassword: UIButton!
    @IBOutlet weak var saveChanges: UIButton!
    @IBOutlet weak var changeProfile: UIView!
    @IBOutlet weak var changeBack: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeBack.alpha = 0
        changeProfile.alpha = 0

        getCornerRadius()
        localizeWords()
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.stackview.endEditing(true)
        self.view.endEditing(true)
    }
    
    func localizeWords() {
        editTitleLabel.text = "Edit".localized()
        firstNameLabel.text = "First name".localized()
        firstName.placeholder = "First name".localized()
        lastNameLabel.text = "Last name".localized()
        lastName.placeholder = "Last name".localized()
        email.placeholder = "E-mail".localized()
        emailLabel.text = "E-mail".localized()
        phoneNumber.placeholder = "Phone number".localized()
        phoneNumberLabel.text = "Phone number".localized()
        genderLabel.text = "Gender".localized()
        male.setTitle("Male".localized(), for: .normal)
        female.setTitle("Female".localized(), for: .normal)
        dateOfBirthLabel.text = "Date of birth".localized()
        changePassword.setTitle("Change password".localized(), for: .normal)
        saveChanges.setTitle("Save changes".localized(), for: .normal)
    }
    
    func getCornerRadius() {
        let txtFields: [UITextField] = [firstName, lastName, idUsername, email, phoneNumber]
        let buttons: [UIButton] = [changeBackground, changeProfileImage, male, female,  changePassword, saveChanges]
        txtFields.forEach{ Utils.getCornerRadiusToTextFields(instance: $0, radius: Utils.radius25)}
        buttons.forEach{ Utils.getCornerRadiusToButton(instance: $0, radius: Utils.radius25)}
        
        Utils.getCornerRadiusToImageView(instance: profileImage, radius: 50)
        profileImage.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        Utils.getCornerRadiusToImageView(instance: background, radius: 150)
        background.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    
    @IBAction func changeBackgroundImage(_ sender: UIButton) {
//        if isTrue {
//            changeBack.alpha = 1
//        } else {
//            changeBack.alpha = 0
//        }
//        isTrue = !isTrue
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
    @IBAction func changeProfileImage(_ sender: UIButton) {
//        if isTrue {
//            changeProfile.alpha = 1
//        } else {
//            changeProfile.alpha = 0
//        }
//        isTrue = !isTrue
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
    @IBAction func changePassword(_ sender: UIButton) {
        
        Utils.toChangePasswordVC(target: self)
        
    }
    
    @IBAction func saveChanges(_ sender: UIButton) {
        Utils.toMyAccountVC(target: self)
    }
    
    @IBAction func dismissEditProfile(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func maleButton(_ sender: UIButton) {
        male.backgroundColor = UIColor(named: "darkPink")
        female.backgroundColor = UIColor(named: "lightGray")
    }
    
    @IBAction func femaleButton(_ sender: UIButton) {
        female.backgroundColor = UIColor(named: "darkPink")
        male.backgroundColor = UIColor(named: "lightGray")
    }
    
    
    
}

extension EditProfileViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
}
