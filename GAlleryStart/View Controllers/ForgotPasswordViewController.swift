//
//  ForgotPasswordViewController.swift
//  hamar5
//
//  Created by Artyom on 14.12.21.
//
import UIKit
import Localize_Swift

class ForgotPasswordViewController: UIViewController {
 
    @IBOutlet weak var forgotPasswordTitleLabel: UILabel!
    @IBOutlet weak var forgotPasswordLabel: UILabel!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var appliacationLabel: UILabel!
    @IBOutlet weak var send: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCornerRadius()
        localizeWords()
    }
    
    func localizeWords() {
        forgotPasswordTitleLabel.text = "Forgot Password".localized()
        forgotPasswordLabel.text = "Forgot Password?".localized()
        appliacationLabel.text = "Please, enter your email address. You will receive a link to create a new password via email.".localized()
        email.placeholder = "E-mail".localized()
        send.setTitle("Send".localized(), for: .normal)
    }
    
    func getCornerRadius() {
        Utils.getCornerRadiusToTextFields(instance: email, radius: Utils.radius25)
        Utils.getCornerRadiusToButton(instance: send, radius: Utils.radius25)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func dismiss(_ sender: UIButton) {
       dismiss(animated: true, completion: nil)
    }

    @IBAction func sendButton(_ sender: UIButton) {
        if email.text!.count <= 5 {
             
            
             email.layer.borderWidth = 2
             email.layer.borderColor  = .init(red: 255, green: 0, blue: 0, alpha: 1)
             
             
             
        }else{
        Utils.toCreateNewPasswordVC(target: self)
        }
   }
    }
   



