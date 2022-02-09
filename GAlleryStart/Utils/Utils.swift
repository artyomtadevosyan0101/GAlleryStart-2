//
//  Utils.swift
//  GAlleryStart
//
//  Created by Armine on 1/5/22.
//

import Foundation
import UIKit

class Utils {
    
    public static let radius25: CGFloat = 25
    public static let radius75: CGFloat = 75
    
    
    //MARK: Navigation
    public static func toLogInVC(target: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let login = storyboard.instantiateViewController(withIdentifier: "LogInViewController") as! LogInViewController
        login.modalPresentationStyle = .fullScreen
        target.present(login, animated: true, completion: nil)
    }
    
    public static func toSignUpVC(target: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let signUp = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
         signUp.modalPresentationStyle = .fullScreen
        target.present(signUp, animated: true, completion: nil)
    }
   
    public static func toMyAccountVC(target: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let myAccount = storyboard.instantiateViewController(withIdentifier: "MyAccountViewController") as! MyAccountViewController
         myAccount.modalPresentationStyle = .fullScreen
        target.present(myAccount, animated: true, completion: nil)
    }
    
    public static func toForgotPasswordVC(target: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let forgotPassword = storyboard.instantiateViewController(withIdentifier: "ForgotPasswordViewController") as! ForgotPasswordViewController
         forgotPassword.modalPresentationStyle = .fullScreen
        target.present(forgotPassword, animated: true, completion: nil)
    }
    
    public static func toNotificationsVC(target: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let notifications = storyboard.instantiateViewController(withIdentifier: "NotificationsViewController") as! NotificationsViewController
        notifications.modalPresentationStyle = .fullScreen
        target.present(notifications, animated: true, completion: nil)
    }
    
    public static func toEditProfileVC(target: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let edit = storyboard.instantiateViewController(withIdentifier: "EditProfileViewController") as! EditProfileViewController
        edit.modalPresentationStyle = .fullScreen
        target.present(edit, animated: true, completion: nil)
    }
    
    public static func toChangePasswordVC(target: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let change = storyboard.instantiateViewController(withIdentifier: "ChangePasswordViewController") as! ChangePasswordViewController
        change.modalPresentationStyle = .fullScreen
        target.present(change, animated: true, completion: nil)
    }
    
    public static func toHomeVC(target: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        homeVC.modalPresentationStyle = .fullScreen
        homeVC.modalTransitionStyle = .crossDissolve
        target.present(homeVC, animated: true, completion: nil)
    }
    
    
    public static func toFollowsVC(target: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let followsVC = storyboard.instantiateViewController(withIdentifier: "FollowsViewController") as! FollowsViewController
        followsVC.modalPresentationStyle = .fullScreen
        followsVC.modalTransitionStyle = .crossDissolve
        target.present(followsVC, animated: true, completion: nil)
    }
    
    public static func toFollowersVC(target: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let followersVC = storyboard.instantiateViewController(withIdentifier: "FollowersViewController") as! FollowersViewController
        followersVC.modalPresentationStyle = .fullScreen
        followersVC.modalTransitionStyle = .crossDissolve
        target.present(followersVC, animated: true, completion: nil)
    }
    
    public static func toMyPicturesVC(target: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let picturesVC = storyboard.instantiateViewController(withIdentifier: "MyPicturesViewController") as! MyPicturesViewController
        picturesVC.modalPresentationStyle = .fullScreen
        picturesVC.modalTransitionStyle = .crossDissolve
        target.present(picturesVC, animated: true, completion: nil)
    }
    
    public static func toCreateNewPasswordVC(target: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let createVC = storyboard.instantiateViewController(withIdentifier: "CreateNewPasswordViewController") as! CreateNewPasswordViewController
        createVC.modalPresentationStyle = .fullScreen
        createVC.modalTransitionStyle = .crossDissolve
        target.present(createVC, animated: true, completion: nil)
    }
    
    public static func toOpenPictureVC(target: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let openPictureVC = storyboard.instantiateViewController(withIdentifier: "OpenPictureViewController") as! CreateNewPasswordViewController
        openPictureVC.modalPresentationStyle = .fullScreen
        openPictureVC.modalTransitionStyle = .crossDissolve

        target.present(openPictureVC, animated: true, completion: nil)
    }
    
    public static func toTabBarVC(target: UIViewController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let tabBarVC = storyboard.instantiateViewController(withIdentifier: "MainTabBarViewController") as! MainTabBarViewController
        tabBarVC.modalPresentationStyle = .fullScreen
        tabBarVC.modalTransitionStyle = .crossDissolve

        target.present(tabBarVC, animated: true, completion: nil)
    }
    
    //MARK: Cornerradius
    public static func getCornerRadiusToButton(instance: UIButton, radius: CGFloat) {
        instance.layer.cornerRadius = radius
    }
    public static func getCornerRadiusToTextFields(instance: UITextField, radius: CGFloat) {
        instance.layer.cornerRadius = radius
    }
    public static func getCornerRadiusToImageView(instance: UIImageView, radius: CGFloat) {
        instance.layer.cornerRadius = radius
    }
    public static func getCornerRadiusToView(instance: UIView, radius: CGFloat) {
        instance.layer.cornerRadius = radius
    }
}
