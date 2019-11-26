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
    
    var items = [ChecklistItem]()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let item1 = ChecklistItem()
        item1.text = "重温德容为加盟巴萨寄出投名状"
        items.append(item1)
        
        let item2 = ChecklistItem()
        item2.text = "A股暴涨，赶紧去开个科创板的新户"
        item2.checked = true
        items.append(item2)
        
        let item3 = ChecklistItem()
        item3.text = "两会召开中，关注每天的新闻动态"
        item3.checked = true
        items.append(item3)
        
        let item4 = ChecklistItem()
        item4.text = "学习神奇的AI视频变脸技术"
        items.append(item4)
        
        let item5 = ChecklistItem()
        item5.text = "为参加6月的WWDC提前做好准备"
        items.append(item5)
    }
    
    //MARK:- Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        let item = items[indexPath.row]
        label.text = item.text

        configureCheckmark(for: cell, with: item)
        
        return cell
    }
    
    //MARK:- Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            
            let item = items[indexPath.row]
            item.toggleChecked()
            configureCheckmark(for: cell, with: item)
            
            tableView.deselectRow(at: indexPath, animated: true)
    }
    
    }
    
    //MARK:- CONFIGURE THE CHECKMARK
    func configureCheckmark(for cell: UITableViewCell, with item: ChecklistItem){
        
        if item.checked {
            cell.accessoryType = .checkmark
        }else{
            cell.accessoryType = .none
        }
    }
    
    
    func configureText(for cell: UITableViewCell, with item: ChecklistItem){
        
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text
        
    }
    
    
}




