//
//  ViewController.swift
//  Postcard
//
//  Created by Rob on 1/21/15.
//  Copyright (c) 2015 RKI.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // perform actions to the messageLabel
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        messageLabel.hidden = false
        
        // perform actions to the messageLabel
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.hidden = false
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()

        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
}

