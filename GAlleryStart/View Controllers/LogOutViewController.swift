//
//  LogOutViewController.swift
//  GAlleryStart
//
//  Created by Armine on 1/7/22.
//

import UIKit

class LogOutViewController: UIViewController {

    @IBOutlet weak var logOutButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOut(_ sender: UIButton) {
        Utils.toLogInVC(target: self)
    }

}
