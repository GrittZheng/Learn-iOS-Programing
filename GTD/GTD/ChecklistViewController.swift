//
//  ViewController.swift
//  GTD
//
//  Created by Gritt Zheng on 2019/11/25.
//  Copyright © 2019 Gritt Zheng. All rights reserved.
//

import UIKit

class checkListViewController: UITableViewController {
    
//    var items = [ChecklistItem]()
    
    var row0item = ChecklistItem()
    var row1item = ChecklistItem()
    var row2item = ChecklistItem()
    var row3item = ChecklistItem()
    var row4item = ChecklistItem()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        row0item.text = "重温德容为加盟巴萨寄出投名状"
        row1item.text = "A股暴涨，赶紧去开个科创板的新户"
        row1item.checked = true
        row2item.text = "两会召开中，关注每天的新闻动态"
        row2item.checked = true
        row3item.text = "学习神奇的AI视频变脸技术"
        row4item.text = "为参加6月的WWDC提前做好准备"
    }


    
    //MARK:- Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    override func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        if indexPath.row  == 0 {
                label.text = row0item.text
            } else if indexPath.row  == 1{
                label.text = row1item.text
            } else if indexPath.row  == 2{
                label.text = row2item.text
            } else if indexPath.row == 3{
                label.text = row3item.text
            }else if indexPath.row  == 4{
                label.text = row4item.text
            }

         
       configureCheckmark(for: cell, at: indexPath)
        
        return cell
    }
    
   
    
    //MARK:- Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            
            if indexPath.row == 0 {
                row0item.checked = !row0item.checked
            } else if indexPath.row == 1 {
                row1item.checked = !row1item.checked
            } else if indexPath.row == 2 {
                row2item.checked = !row2item.checked
            }   else if indexPath.row == 3 {
                row3item.checked = !row3item.checked
            }   else if indexPath.row == 4 {
                row4item.checked = !row4item.checked
            }

            
            configureCheckmark(for: cell, at: indexPath)
            
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    }
    
    //MARK:- CONFIGURE THE CHECKMARK
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath){
    var isChecked = false
        if indexPath.row == 0{
                isChecked = row0item.checked
            }else if indexPath.row == 1{
                isChecked = row1item.checked
            }else if indexPath.row == 2{
                isChecked = row2item.checked
            }else if indexPath.row == 3{
                isChecked = row3item.checked
            }else if indexPath.row == 4{
                isChecked = row4item.checked
            }


        if isChecked {
            cell.accessoryType = .checkmark
        }else{
            cell.accessoryType = .none
        }
    }
    
    
}




