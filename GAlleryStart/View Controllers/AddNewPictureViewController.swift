//
//  AddNewPictureViewController.swift
//  GAlleryStart
//
//  Created by Armine on 1/16/22.
//

import UIKit

class AddNewPictureViewController: UIViewController {

    @IBOutlet weak var addedImageView: UIImageView!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBOutlet weak var hashtagsTextField: UITextField!
    
    @IBOutlet weak var publishButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCornerRadius()
        // Do any additional setup after loading the view.
    }
    
    func getCornerRadius() {
        Utils.getCornerRadiusToButton(instance: publishButton, radius: Utils.radius25)
    }
    
    @IBAction func publish(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
