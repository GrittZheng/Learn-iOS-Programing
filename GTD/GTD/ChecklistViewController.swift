//
//  ViewController.swift
//  GTD
//
//  Created by Gritt Zheng on 2019/11/25.
//  Copyright © 2019 Gritt Zheng. All rights reserved.
//

import UIKit

class checkListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    //MARK:- Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    override func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = "观看《流浪地球》"
        }else if indexPath.row == 1 {
            label.text = "观看《疯狂的外星人》"
        }else if indexPath.row == 2 {
            label.text = "观看《飞驰人生》"
        }else if indexPath.row == 3 {
            label.text = "观看《喜剧之王》"
        }else if indexPath.row == 4 {
            label.text = "观看《小猪佩奇过大年》"
        }
        
        
        
        
        
        return cell
    }
}




