//
//  PeoplesViewController.swift
//  GAlleryStart
//
//  Created by Armine on 1/7/22.
//

import UIKit

class PeoplesViewController: UIViewController {

    @IBOutlet weak var followsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        getConfigurations()
    }
    
    func getConfigurations() {
        
        followsTableView.delegate = self
        followsTableView.dataSource = self
        
        followsTableView.register(UINib(nibName: "FollowsTableViewCell", bundle: nil), forCellReuseIdentifier: "FollowsTableViewCell")
    }


}

extension PeoplesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FollowsTableViewCell", for: indexPath) as? FollowsTableViewCell else {return UITableViewCell()}
        
        return cell
    }
    
    
}
