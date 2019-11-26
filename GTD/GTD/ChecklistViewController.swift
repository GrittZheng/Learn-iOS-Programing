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
    
    let row0text = "去看电影《流浪地球》"
    let row1text = "学习吴恩达博士的《机器学习》教程"
    let row2text = "开通海外交易账户买美港股"
    let row3text = "看美食节目《风味人间》"
    let row4text = "约上好友行摄维多利亚港"
    
    var row0checked = false
    var row1checked = false
    var row2checked = false
    var row3checked = false
    var row4checked = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        
        
//        let item1 = ChecklistItem()
//        item1.text = "重温德容为加盟巴萨基础透明状"
//        items.append(item1)
//
//        let item2 = ChecklistItem()
//        item2.text = "A股暴涨，赶紧去开个科创板新户"
//        items.append(item2)
//
//        let item3 = ChecklistItem()
//        item3.text = "两会召开中"
//        items.append(item3)
//
//        let item4 = ChecklistItem()
//        item4.text = "学习神奇的AI视频变脸技术"
//        items.append(item4)
//
//        let item5 = ChecklistItem()
//        item5.text = "为参加6月的WWDC提前做好准备"
//        items.append(item5)
//
    }


    
    //MARK:- Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    override func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        if indexPath.row == 0 {
        label.text = row0text
        } else if indexPath.row == 1{
        label.text = row1text
        } else if indexPath.row == 2{
        label.text = row2text
        } else if indexPath.row == 3{
        label.text = row3text
        }else if indexPath.row == 4{
        label.text = row4text
        }
         
       configureCheckmark(for: cell, at: indexPath)
        
        return cell
    }
    
   
    
    //MARK:- Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            
            if indexPath.row == 0 {
            row0checked = !row0checked
            } else if indexPath.row == 1 {
            row1checked = !row1checked
            } else if indexPath.row == 2 {
            row2checked = !row2checked
            }  else if indexPath.row == 3 {
            row3checked = !row3checked
            }  else if indexPath.row == 4 {
            row4checked = !row4checked
            }
            
            configureCheckmark(for: cell, at: indexPath)
            
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    }
    
    //MARK:- CONFIGURE THE CHECKMARK
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath){
    var isChecked = false
        if indexPath.row == 0{
            isChecked = row0checked
        }else if indexPath.row == 1{
            isChecked = row1checked
        }else if indexPath.row == 2{
            isChecked = row2checked
        }else if indexPath.row == 3{
            isChecked = row3checked
        }else if indexPath.row == 4{
            isChecked = row4checked
        }
        if isChecked {
            cell.accessoryType = .checkmark
        }else{
            cell.accessoryType = .none
        }
    }
    
    
}




