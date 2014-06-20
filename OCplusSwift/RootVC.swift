//
//  RootVC.swift
//  OCplusSwift
//
//  Created by jian.zhao on 14-6-20.
//  Copyright (c) 2014年 jian.zhao. All rights reserved.
//

import UIKit

class RootVC: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
 
   
    
    var myTableView:UITableView = UITableView()
    
    override func viewWillAppear(animated: Bool){
        super.viewWillAppear(animated)
        println("override the viewWillAppear")
        AppDelegate().print()
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        println("viewDidLoad")
        //创建Table
        createTable()
    }
    
    func createTable()->(){
        let width:Float = AppDelegate().screenSize.width
        let height:Float = AppDelegate().screenSize.height
        
        var tableView:UITableView! = UITableView(frame: CGRectMake(0,0,width,height), style:.Plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.clearColor()
        self.view.addSubview(tableView)
        self.myTableView = tableView
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        
        return 3
    }

    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
    
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? UITableViewCell
        
        if !cell {
            cell = UITableViewCell(style: .Value1, reuseIdentifier: "Cell")
        }
        cell!.textLabel.text = "Nothong"
        return cell
    }

}
