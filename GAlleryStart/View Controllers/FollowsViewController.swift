//
//  FollowsViewController.swift
//  GAlleryStart
//
//  Created by Armine on 1/7/22.
//

import UIKit

class FollowsViewController: UIViewController {
    
    @IBOutlet weak var people: UIView!
    @IBOutlet weak var genres: UIView!
    
    @IBOutlet weak var followsSegments: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        people.alpha = 1
        genres.alpha = 0
        
        //followsSegments.segment

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
