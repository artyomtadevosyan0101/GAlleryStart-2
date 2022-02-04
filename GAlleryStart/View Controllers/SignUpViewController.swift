//
//  SignUpViewController.swift
//  GAlleryStart
//
//  Created by Armine on 12/9/21.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var signUpScrollView: UIScrollView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var signUpLabel: UILabel!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var idUsername: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var femaleButton: UIButton!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var selectAgreement: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    
    var emailPravda = false
    var passwordPravda = false

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        getCornerRadius()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func getCornerRadius() {
        
        let txtFields: [UITextField] = [firstName, lastName, idUsername, email, phoneNumber, password, confirmPassword]
        let buttons: [UIButton] = [maleButton, femaleButton,signUpButton]
        txtFields.forEach{ Utils.getCornerRadiusToTextFields(instance: $0, radius: Utils.radius25)}
        buttons.forEach{ Utils.getCornerRadiusToButton(instance: $0, radius: Utils.radius25)}
        
    }

  
    
    @IBAction func male(_ sender: UIButton) {
        maleButton.backgroundColor = UIColor(named: "darkPink")
        femaleButton.backgroundColor = UIColor(named: "lightGray")
        
    }
    
    @IBAction func female(_ sender: UIButton) {
        femaleButton.backgroundColor = UIColor(named: "darkPink")
        maleButton.backgroundColor = UIColor(named: "lightGray")
    }
    
    @IBAction func signUp(_ sender: UIButton) {
        if firstName.text!.count <= 5 {
             
             firstName.layer.borderWidth = 2
             firstName.layer.borderColor  = .init(red: 255, green: 0, blue: 0, alpha: 1)
             emailPravda = false
             
        }else{
        emailPravda = true
             firstName.layer.borderColor  = UIColor.clear.cgColor
        }
        
        if lastName.text!.count <= 5 {
             lastName.layer.borderWidth = 2
             lastName.layer.borderColor  = .init(red: 255, green: 0, blue: 0, alpha: 1)
             passwordPravda = false
             
        } else {
            
             passwordPravda = true
             lastName.layer.borderColor  = UIColor.clear.cgColor
             
             }
        
      
        if confirmPassword.text!.count <= 5 {
             
            confirmPassword.layer.borderWidth = 2
            confirmPassword.layer.borderColor  = .init(red: 255, green: 0, blue: 0, alpha: 1)
             emailPravda = false
             
        }else{
        emailPravda = true
             email.layer.borderColor  = UIColor.clear.cgColor
        }
        if idUsername.text!.count <= 5 {
             
            idUsername.layer.borderWidth = 2
            idUsername.layer.borderColor  = .init(red: 255, green: 0, blue: 0, alpha: 1)
             emailPravda = false
             
        }else{
        emailPravda = true
             idUsername.layer.borderColor  = UIColor.clear.cgColor
        }
        
        if password.text!.count <= 5 {
             
            password.layer.borderWidth = 2
            password.layer.borderColor  = .init(red: 255, green: 0, blue: 0, alpha: 1)
             emailPravda = false
             
        }else{
        emailPravda = true
             email.layer.borderColor  = UIColor.clear.cgColor
        }
        if phoneNumber.text!.count <= 5 {
             
            phoneNumber.layer.borderWidth = 2
            phoneNumber.layer.borderColor  = .init(red: 255, green: 0, blue: 0, alpha: 1)
             emailPravda = false
             
        }else{
        emailPravda = true
             email.layer.borderColor  = UIColor.clear.cgColor
        }

    if email.text!.count <= 5 {
         
        email.layer.borderWidth = 2
        email.layer.borderColor  = .init(red: 255, green: 0, blue: 0, alpha: 1)
         emailPravda = false
         
    }else{
    emailPravda = true
         email.layer.borderColor  = UIColor.clear.cgColor
    }
    
    if emailPravda && passwordPravda{
         Utils.toMyAccountVC(target: self)
         
    } else {
       //  error.isHidden = false
    }
}
}
       // Utils.toMyAccountVC(target: self)

    

    //@IBAction func logIn(_ sender: UIButton) {
      //  Utils.toLogInVC(target: self)
  //  }
    
  //  @IBAction func dismiss(_ sender: UIButton) {
      //  dismiss(animated: true, completion: nil)
  //  }
    
//}
