//
//  NotificationsViewController.swift
//  GAlleryStart
//
//  Created by Armine on 1/5/22.
//

import UIKit
import Localize_Swift

class NotificationsViewController: UIViewController {

    @IBOutlet weak var notificationsTitleLabel: UILabel!
    @IBOutlet weak var showNotificationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        localizeWords()
    }
    
    func localizeWords() {
        notificationsTitleLabel.text = "Notifications".localized()
        showNotificationLabel.text = "Show notifications".localized()
    }
    
    @IBAction func dismiss(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    


}
