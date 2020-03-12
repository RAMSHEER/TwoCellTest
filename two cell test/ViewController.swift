//
//  ViewController.swift
//  two cell test
//
//  Created by Purpose Code on 06/03/20.
//  Copyright © 2020 EmojiView. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return  UITableView.automaticDimension
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

            return 5
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
                   let cell: ReplyCelll  = tableView.dequeueReusableCell(withIdentifier: "ReplyCelll", for: indexPath) as! ReplyCelll
             return cell
        
        
        
 
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
                 let cell: CommentCell = tableView.dequeueReusableCell(withIdentifier: "CommentCell") as! CommentCell
            return cell
        
        
    }
        
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}

