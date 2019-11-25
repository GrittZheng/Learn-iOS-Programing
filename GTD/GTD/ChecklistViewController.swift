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
        1
    }
    override func  tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        return cell
    }
}




