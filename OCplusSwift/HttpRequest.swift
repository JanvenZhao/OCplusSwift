//
//  HttpRequest.swift
//  OCplusSwift
//
//  Created by Janven Zhao on 14-6-21.
//  Copyright (c) 2014年 jian.zhao. All rights reserved.
//

import UIKit

class HttpRequest: NSObject {
    
    class func requestWithURL(urlString:String,completionHandle:(data:AnyObject)->Void){
        
        var url = NSURL.URLWithString(urlString)
        var req = NSURLRequest(URL:url)
        var queue = NSOperationQueue()
        NSURLConnection.sendAsynchronousRequest(req,queue:queue,completionHandler:{response,data,error in
            if error
            {
                dispatch_async(dispatch_get_main_queue(),
                    {
                        println(error)
                        completionHandle(data:NSNull())
                    })
            }
            else{
                
                let jsonData = NSJSONSerialization.JSONObjectWithData(data,options:NSJSONReadingOptions.MutableContainers,error:nil) as NSDictionary
                
                dispatch_async(dispatch_get_main_queue(),
                    {
                        completionHandle(data:jsonData)
                        
                    })
            }
            })
    }
    
}
