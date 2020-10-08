//
//  SecondViewController.swift
//  To Do List 1.0
//
//  Created by andy on 06/10/2020.
//  Copyright © 2020 Bluemoons. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    
    @IBOutlet var Task: UITextField!
    
    
    @IBAction func addTask(sender: AnyObject)
    
    {
      toDoList.append(Task.text!)
        
      Task.text = ""
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

       self.view.endEditing(true)
        
    }

    func textFieldShouldReturn(textField: UITextField!) -> Bool {
    
        Task.resignFirstResponder()
        return true
    
    }

}

