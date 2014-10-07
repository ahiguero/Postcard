//
//  ViewController.swift
//  Postcard
//
//  Created by Alvaro Higuero on 9/29/14.
//  Copyright (c) 2014 Alvaro Higuero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    //Challenge 1: Practicing with the Story Board
    //Add a Lavel to the storyboard - set its initial state to hidden. Connect it to the storyboard and name it nameLabel
    //When pressing the button a few things should occur:
    // unhide the nameLabel
    // update the nameLabel's text to display the information in the namTextField
    // Change the nameLabel's textColor to blue
    // clear the nameTextField's text
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
        //Code will evaluate when we press the button
        //Insert comment here
        //comment for monday
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        //Challenge 1 code
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        //Original Code
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

