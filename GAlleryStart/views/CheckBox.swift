//
//  CheckBox.swift
//  GAlleryStart
//
//  Created by Armine on 1/5/22.
//

import UIKit

class CheckBox: UIButton {

    let checkedImage = UIImage(named: "checkbox.checked")! as UIImage
    let uncheckedImage = UIImage(named: "checkbox.unchecked")! as UIImage
        
    var isChecked: Bool = false {
            didSet {
                if isChecked == true {
                    self.setImage(checkedImage, for: UIControl.State.normal)
                } else {
                    self.setImage(uncheckedImage, for: UIControl.State.normal)
                }
            }
        }
          
    override func awakeFromNib() {
         self.addTarget(self, action:#selector(buttonClicked(sender:)), for: UIControl.Event.touchUpInside)
         self.isChecked = false
     }
         
     @objc func buttonClicked(sender: UIButton) {
         if sender == self {
             isChecked = !isChecked
         }
     }
    

}
