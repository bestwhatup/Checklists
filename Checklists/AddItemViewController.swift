//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Chawatvish Worrapoj on 2/13/2559 BE.
//  Copyright © 2559 Chawatvish Worrapoj. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController,UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        textField.becomeFirstResponder()
    }
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        return nil
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        print("range : \(range)")
        print("string : \(string)")
        
        let oldText: NSString = textField.text!
        let newText: NSString = oldText.stringByReplacingCharactersInRange(range, withString: string)
        
        print("oldtext : \(oldText)")
        print("newtext : \(newText)")
        
        doneBarButton.enabled = (newText.length > 0)
        
        return true
    }
    
    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func done() {
        print("Contents of the textField : \(textField.text!)")
        dismissViewControllerAnimated(true, completion: nil)
    }
}
