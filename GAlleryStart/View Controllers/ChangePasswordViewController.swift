//
//  ChangePasswordViewController.swift
//  GAlleryStart
//
//  Created by Armine on 1/3/22.
//

import UIKit
import Localize_Swift

class ChangePasswordViewController: UIViewController {

    @IBOutlet weak var changePasswordTitleLabel: UILabel!
    @IBOutlet weak var oldPassword: UITextField!
    @IBOutlet weak var newPassword: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var changePassword: UIButton!
    @IBOutlet weak var arrowLeft: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCornerRadius()
        localizeWords()
        
    }

    func localizeWords() {
        changePasswordTitleLabel.text = "Change password".localized()
        oldPassword.placeholder = "Old password".localized()
        newPassword.placeholder = "New password".localized()
        confirmPassword.placeholder = "Confirm password".localized()
        changePassword.setTitle("Change password".localized(), for: .normal)
    }
    
    func getCornerRadius() {
        let textFields: [UITextField] = [oldPassword, newPassword, confirmPassword]
        textFields.forEach{ Utils.getCornerRadiusToTextFields(instance: $0, radius: Utils.radius25)}
        Utils.getCornerRadiusToButton(instance: changePassword, radius: Utils.radius25)
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
  
    
    @IBAction func changePassword(_ sender: Any) {
        Utils.toEditProfileVC(target: self)
    }
    @IBAction func cancelChanging(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
