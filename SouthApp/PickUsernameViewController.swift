//
//  PickUsernameViewController.swift
//  SouthApp
//
//  Created by Justin Matsnev on 8/19/15.
//  Copyright (c) 2015 Justin Matsnev. All rights reserved.
//

import Foundation
import UIKit

class PickUsernameViewController : UIViewController {
    
    var usernameTextfield : UITextField!
    let defaults : NSUserDefaults = NSUserDefaults.standardUserDefaults()
    
    func configurationTextField(textField: UITextField!)
    {
        //println("generating the TextField")
        textField.placeholder = "JustinMitchEric"
        usernameTextfield = textField
    }
    
    func handleCancel(alertView: UIAlertAction!)
    {
        
    }
    
    func presentAlertView() {
        let alertView = UIAlertController(title: "Chatstr", message: "Please enter a username", preferredStyle: UIAlertControllerStyle.Alert)
        alertView.addTextFieldWithConfigurationHandler(configurationTextField)
        alertView.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: { action in
           // println("canceled")
        }))
        

      alertView.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.Default, handler: { action in
        
            //println(self.usernameTextfield?.text)
            self.defaults.setValue(self.usernameTextfield.text, forKey: "username")
            self.defaults.synchronize()
            self.performSegueWithIdentifier("usernameToPicture", sender: self)
        }))
        self.presentViewController(alertView, animated: true, completion: nil)
    }

    
    override func viewDidLoad() {
       

    }
    override func viewDidAppear(animated: Bool) {
        presentAlertView()
    }
    
}