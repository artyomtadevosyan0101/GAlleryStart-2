//
//  FollowsTableViewCell.swift
//  GAlleryStart
//
//  Created by Armine on 1/7/22.
//

import UIKit

class FollowsTableViewCell: UITableViewCell {

    var isFollowing = true
    
    @IBOutlet weak var followUnfollowButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func followUnfollowButton(_ sender: Any) {
        if isFollowing == false {
            followUnfollowButton.backgroundColor = UIColor(named: "darkPink")
            //followButton.titleLabel?.text = "Follow"
            followUnfollowButton.setTitle("Unfollow", for: .normal)
            isFollowing = !isFollowing
        } else {
            followUnfollowButton.backgroundColor = .white
            //followButton.titleLabel?.text = "Unfollow"
            followUnfollowButton.setTitle("Follow", for: .normal)
            isFollowing = !isFollowing
        }
    }
    
}
