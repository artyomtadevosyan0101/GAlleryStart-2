//
//  ViewController.swift
//  XcodeHomework1
//
//  Created by Artyom on 19.10.21.
//

import UIKit
import Localize_Swift

class LogInViewController: UIViewController {
      
     @IBOutlet weak var logInLabel: UILabel!
     @IBOutlet weak var error: UILabel!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var logIn: UIButton!
     @IBOutlet weak var login: UILabel!
     @IBOutlet weak var signUp: UIButton!
     @IBOutlet weak var forgotPasswordButton: UIButton!
     
     var emailPravda = false
     var passwordPravda = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
         getCornerRadius()
         error.isHidden = true
         edit()
         localizeWords()
         
    }

     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         self.view.endEditing(true)
     }
   
     
     @objc func didTapButton() {
          dismiss(animated: true, completion:  nil)
     }
     
     func localizeWords() {
          logInLabel.text = "Log in".localized()
          error.text = "ERROR !".localized()
          email.placeholder = "E-mail".localized()
          password.placeholder = "Password".localized()
          login.text = "Log in".localized()
          signUp.setTitle("Sign up".localized(), for: .normal)
          //signUp.titleLabel?.text = "Sign up".localized()
          //forgotPasswordButton.titleLabel?.text = "Forgot password?".localized()
          forgotPasswordButton.setTitle("Forgot password?".localized(), for: .normal)
     }
     
     func getCornerRadius() {
          let txtFields: [UITextField] = [email, password]
          txtFields.forEach{ Utils.getCornerRadiusToTextFields(instance: $0, radius: Utils.radius25)}
          Utils.getCornerRadiusToButton(instance: signUp, radius: Utils.radius25)
     }
     
     func edit(){
          if email.isEditing == true{
               email.layer.borderColor = UIColor.white.cgColor
          }
     }
     

     
    @IBAction func logInButton(_ sender: UIButton) {
         if email.text!.count <= 5 {
              
              email.layer.borderWidth = 2
              email.layer.borderColor  = .init(red: 255, green: 0, blue: 0, alpha: 1)
              emailPravda = false
              
         }else{
         emailPravda = true
              email.layer.borderColor  = UIColor.clear.cgColor
         }
         
         if password.text!.count <= 5 {
              password.layer.borderWidth = 2
              password.layer.borderColor  = .init(red: 255, green: 0, blue: 0, alpha: 1)
              passwordPravda = false
              
         } else {
             
              passwordPravda = true
              password.layer.borderColor  = UIColor.clear.cgColor
              
              }
         
         if emailPravda && passwordPravda{
              Utils.toMyAccountVC(target: self)
              
         } else {
              error.isHidden = false
         }
         
    }
    
    @IBAction func signUpButton(_ sender: UIButton) {
         Utils.toSignUpVC(target: self)
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
         Utils.toForgotPasswordVC(target: self)
    }
     
     @IBAction func toHome(_ sender: UIButton) {
          Utils.toTabBarVC(target: self)
     }
     
}

