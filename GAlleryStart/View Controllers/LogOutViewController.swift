//
//  LogOutViewController.swift
//  GAlleryStart
//
//  Created by Armine on 1/7/22.
//

import UIKit
import Localize_Swift

class LogOutViewController: UIViewController {

    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var logOutLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        localizeWords()
    }
    
    func localizeWords() {
        logOutLabel.text = "Log out".localized()
    }
    
    @IBAction func logOut(_ sender: UIButton) {
        Utils.toLogInVC(target: self)
    }

}
