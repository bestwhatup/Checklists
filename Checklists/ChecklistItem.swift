//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Chawatvish Worrapoj on 2/13/2559 BE.
//  Copyright © 2559 Chawatvish Worrapoj. All rights reserved.
//

import Foundation

class ChecklistItem:NSObject {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
    
}