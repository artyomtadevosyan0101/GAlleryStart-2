//
//  CreateNewPasswordViewController.swift
//  Hamar4
//
//  Created by Artyom on 13.12.21.
//
import UIKit

class CreateNewPasswordViewController: UIViewController {
    

    @IBOutlet weak var newPassword: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var save: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getCornerRadius()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
  
    
    func getCornerRadius() {
        let textFields: [UITextField] = [newPassword, confirmPassword]
        textFields.forEach{ Utils.getCornerRadiusToTextFields(instance: $0, radius: Utils.radius25)}
        Utils.getCornerRadiusToButton(instance: save, radius: Utils.radius25)
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        if newPassword.text!.count <= 5 || confirmPassword.text!.count <= 5{
             
         
             newPassword.layer.borderWidth = 2
             newPassword.layer.borderColor  = .init(red: 255, green: 0, blue: 0, alpha: 1)
             confirmPassword.layer.borderWidth = 2
             confirmPassword.layer.borderColor  = .init(red: 255, green: 0, blue: 0, alpha: 1)
             
        }else{
        Utils.toLogInVC(target: self)
    }
}
}
