//
//  LanguagesViewController.swift
//  GAlleryStart
//
//  Created by Armine on 1/16/22.
//

import UIKit
import Localize_Swift

class LanguagesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func language(_ sender: UIButton) {
        let index = sender.tag
            switch index {
            case 1:
              Localize.setCurrentLanguage("en")
            case 2:
              Localize.setCurrentLanguage("ru")
            case 3:
              Localize.setCurrentLanguage("hy")
            default:
              print("Error")
            
            }
        
     //   let vc = storyboard?.instantiateViewController(withIdentifier: "MyAccountViewController") as! MyAccountViewController
        
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let vc = storyboard.instantiateViewController(withIdentifier: "MainTabBarViewController") as! MainTabBarViewController
            vc.modalTransitionStyle = .flipHorizontal
            vc.modalPresentationStyle = .overFullScreen
            self.present(vc, animated: true, completion: nil)
    }
}
