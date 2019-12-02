//
//  ChecklistItem.swift
//  GTD
//
//  Created by Gritt Zheng on 2019/11/25.
//  Copyright © 2019 Gritt Zheng. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
    var text = ""
    var checked = false
    func toggleChecked() {
        checked = !checked
    }
}
