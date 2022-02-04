//
//  FollowersViewController.swift
//  GAlleryStart
//
//  Created by Armine on 1/7/22.
//

import UIKit

class FollowersViewController: UIViewController {

    
    @IBOutlet weak var followersTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getConfigurations()
    }
    
    func getConfigurations() {
        
        followersTableView.delegate = self
        followersTableView.dataSource = self
        
        followersTableView.register(UINib(nibName: "FollowersTableViewCell", bundle: nil), forCellReuseIdentifier: "FollowersTableViewCell")
    }
    
    @IBAction func dismiss(_ sender: UIButton) {
        dismiss(animated: true)
    }
    


}

extension FollowersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FollowersTableViewCell") as? FollowersTableViewCell else {return UITableViewCell()}
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 70
    }
    
}
