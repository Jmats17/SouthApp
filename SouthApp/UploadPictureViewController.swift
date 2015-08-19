//
//  UploadPictureViewController.swift
//  SouthApp
//
//  Created by Justin Matsnev on 8/19/15.
//  Copyright (c) 2015 Justin Matsnev. All rights reserved.
//

import Foundation
import UIKit

class UploadPictureViewController : UIViewController {
    
    let defaults : NSUserDefaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
       let username = defaults.valueForKey("username") as! String
        println(username)
    }
}