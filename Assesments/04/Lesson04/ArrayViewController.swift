//
//  ViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController , UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate{

    var array: [String] = []
    var index: Int = 0
   
    @IBOutlet weak var refoutletTextField: UITextField!
    
    @IBOutlet weak var tableViewRef: UITableView!

    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        array.append(refoutletTextField.text)
        
        println(array)
        tableViewRef.reloadData()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //refoutletTextField.delegate = self
        
        /*
        TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. Accept keyboard input from the text view when the return key is pressed. Add the string that was entered into the text view into an array of strings (stored in this class).
        TODO two: Make this class a //UITableViewDelegate and UITableViewDataSource that supply the above table view with cells. These cells should correspond to the text entered into the text box. E.g. If the text "one", then "two", then "three" was entered into the text box, there should be three cells in this table view that contain those strings in order.
        
        */
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("stringcell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        
        return cell
    }
    
    
    
    
}

