//
//  RootVC.swift
//  OCplusSwift
//
//  Created by jian.zhao on 14-6-20.
//  Copyright (c) 2014年 jian.zhao. All rights reserved.
//

import UIKit

/*
发现 viewDidLoad 先执行 然后 ViewWillAppear 
与之前ios7等 先执行 viewWillAppear 后执行 viewDidLoad不一致。。。。待研究
*/
    
class RootVC: UIViewController,UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate{
    
    var myTableView:UITableView = UITableView()
    
    var width:Float = 0
    var height:Float = 0
    
    override func viewWillAppear(animated: Bool){
        super.viewWillAppear(animated)
        println("override the viewWillAppear")
        AppDelegate().print()
        }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        println("viewDidLoad")
        //HttpRequest.requestWithURL()
        
        
        //创建Table
        createTable()
    }
    
    func createTable()->(){
        var tableView:UITableView! = UITableView(frame: CGRectMake(0,0,width,height), style:.Plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor.clearColor()
        self.view.addSubview(tableView)
        self.myTableView = tableView
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        
        return 1
    }
    
    func numberOfSectionsInTableView(tableView: UITableView!) -> Int{
    
        return 3
    }
    

    func tableView(tableView: UITableView!, heightForHeaderInSection section: Int) -> CGFloat{
    
        return 20.0
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> CGFloat{
    
        return 66
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
    
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? CustomCell
        
        if !cell {
            var arr =  NSBundle.mainBundle().loadNibNamed("CustomCell" ,owner: self, options: nil) as Array

            cell = arr[0] as?CustomCell
        }
        //cell!.textLabel.text = "Nothong"
        
        var image:UIImage = UIImage(named: "ifly_btn_h.png")
        cell!.nameIcon.image = image
        cell!.nameLabel.text = "To Do it "
        cell!.numbers.delegate = self
        
        return cell
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    

}
