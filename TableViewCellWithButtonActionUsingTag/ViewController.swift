//
//  ViewController.swift
//  TableViewCellWithButtonActionUsingTag
//
//  Created by Sherif on 7/12/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    var youtubers = ["Sherif Ashraf" , "Ahmed" , "Mohamed" , "Ali" , "Hassan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "YoutubersCell") as! YoutubersCell
        cell.youtuberNameLabel.text = youtubers[indexPath.row]
        cell.followYoutuberButton.tag = indexPath.row
        cell.followYoutuberButton.addTarget(self, action: #selector(followTapped(_:)), for: .touchUpInside)
        return cell
        
    }
    
    @objc func followTapped(_ sender : UIButton){
        let youtuber = youtubers[sender.tag]
        let alert = UIAlertController(title: "Subscribed!", message: "Subscribed to \(youtuber)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return youtubers.count
    }
    
}

