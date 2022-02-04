//
//  MenuViewController.swift
//  GAllery
//
//  Created by Armine on 1/2/22.
//

import UIKit

protocol MenuViewControllerDelegate {
    func hideMenu()
}


class MenuViewController: UIViewController {
    
    var delegate : MenuViewControllerDelegate?
    var isLanguagesHidden = true
    
    @IBOutlet weak var all: UIButton!
    @IBOutlet weak var fashion: UIButton!
    @IBOutlet weak var streetPhotography: UIButton!
    @IBOutlet weak var landscape: UIButton!
    @IBOutlet weak var portraiture: UIButton!
    @IBOutlet weak var other: UIButton!
    @IBOutlet weak var languages: UIButton!
    @IBOutlet weak var settings: UIButton!
    @IBOutlet weak var help: UIButton!
    @IBOutlet weak var languagesView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        languagesView.alpha = 0
        
    }
    @IBAction func onClickDismissMenu(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func closeMenu(_ sender: Any) {
        delegate?.hideMenu()
    }
    
    @IBAction func languages(_ sender: Any) {
        if isLanguagesHidden {
            languagesView.alpha = 1
        } else {
            languagesView.alpha = 0
        }
        isLanguagesHidden = !isLanguagesHidden
    }
    @IBAction func settings(_ sender: Any) {
    }
    
    @IBAction func help(_ sender: Any) {
    }
}
