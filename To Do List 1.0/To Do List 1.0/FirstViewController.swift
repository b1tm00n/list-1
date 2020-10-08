//
//  FirstViewController.swift
//  To Do List 1.0
//
//  Created by andy on 06/10/2020.
//  Copyright © 2020 Bluemoons. All rights reserved.
//

import UIKit


var toDoList = [String]()

class FirstViewController: UIViewController, UITableViewDataSource {
    
    

    

    @IBOutlet var ToDoListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a ni
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidAppear(animated: Bool) {

       ToDoListTable.reloadData()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")
        cell?.textLabel?.text = toDoList[indexPath.row]
        return cell!
     /*  let identifier = "CellIdentifier"
        var cell = tableView.dequeueReusableCellWithIdentifier(identifier)
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: identifier)
        }
        cell?.textLabel?.text = toDoList[indexPath.row]
        return cell!*/
    }
    
   
}

