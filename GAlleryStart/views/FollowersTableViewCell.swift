//
//  FollowersTableViewCell.swift
//  GAlleryStart
//
//  Created by Armine on 1/7/22.
//

import UIKit

class FollowersTableViewCell: UITableViewCell {
    
    var isFollowing = false
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var followersImage: UIImageView!
    
    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var followersLabel: UILabel!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func followUnfollow(_ sender: UIButton) {
        if isFollowing == false {
            followButton.backgroundColor = UIColor(named: "darkPink")
            //followButton.titleLabel?.text = "Follow"
            followButton.setTitle("Unfollow", for: .normal)
            isFollowing = !isFollowing
        } else {
            followButton.backgroundColor = .white
            //followButton.titleLabel?.text = "Unfollow"
            followButton.setTitle("Follow", for: .normal)
            isFollowing = !isFollowing
        }
    }
    
    
}
