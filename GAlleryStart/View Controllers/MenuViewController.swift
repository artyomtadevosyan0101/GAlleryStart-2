//
//  MenuViewController.swift
//  GAllery
//
//  Created by Armine on 1/2/22.
//

import UIKit
import Localize_Swift

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
        localizeWords()
        
    }
    
    func localizeWords() {
        all.setTitle("All".localized(), for: .normal)
        fashion.setTitle("Fashion".localized(), for: .normal)
        streetPhotography.setTitle("Street Photography".localized(), for: .normal)
        landscape.setTitle("Landscape".localized(), for: .normal)
        portraiture.setTitle("Portaiture".localized(), for: .normal)
        other.setTitle("Other".localized(), for: .normal)
        languages.setTitle("   Languages".localized(), for: .normal)
        settings.setTitle("   Settings".localized(), for: .normal)
        help.setTitle("   Help".localized(), for: .normal)
    }
    
    @IBAction func onClickDismissMenu(_ sender: UIButton) {
        Utils.toTabBarVC(target: self)
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
