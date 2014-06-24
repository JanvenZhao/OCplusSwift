//
//  CustomCell.swift
//  OCplusSwift
//
//  Created by Janven Zhao on 14-6-20.
//  Copyright (c) 2014年 jian.zhao. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet var nameIcon : UIImageView = nil
    
    @IBOutlet var nameLabel : UILabel = nil
    
    @IBOutlet var numbers : UITextField = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
