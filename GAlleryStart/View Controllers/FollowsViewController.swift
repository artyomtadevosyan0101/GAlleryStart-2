//
//  FollowsViewController.swift
//  GAlleryStart
//
//  Created by Armine on 1/7/22.
//

import UIKit
import Localize_Swift

class FollowsViewController: UIViewController {
    
    @IBOutlet weak var followsTitleLabel: UILabel!
    @IBOutlet weak var people: UIView!
    @IBOutlet weak var genres: UIView!
    
    @IBOutlet weak var followsSegments: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        people.alpha = 1
        genres.alpha = 0
        localizeWords()
        //followsSegments.segment

    }
    
    func localizeWords() {
        followsTitleLabel.text = "Follows".localized()
        followsSegments.setTitle("People".localized(), forSegmentAt: 0)
        followsSegments.setTitle("Genres".localized(), forSegmentAt: 1)
    }
    
    @IBAction func followsSegment(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            people.alpha = 1
            genres.alpha = 0
            
        } else  if sender.selectedSegmentIndex == 1 {
            people.alpha = 0
            genres.alpha = 1
        }
    }
    
    @IBAction func dismiss(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    //@IBAction func switchViews(_ sender: UI)
    

}
