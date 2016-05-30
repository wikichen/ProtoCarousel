//
//  LoginViewController.swift
//  ProtoCarousel
//
//  Created by Jonathan Chen on 5/29/16.
//  Copyright © 2016 Chenlo Park. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginScrollView: UIScrollView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginIndicator: UIActivityIndicatorView!
    
    //var fieldInitialY: CGFloat!
    //var fieldOffset: CGFloat!
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loginScrollView.contentSize = loginScrollView.frame.size
        loginScrollView.contentInset.bottom = 100
        
        // Set positioning of elements to move
        //fieldInitialY = fieldParentView.frame.origin.y
        //fieldOffset = -50
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        
        // Register for keyboard events
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(keyboardWillShow(_:)), name:UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(keyboardWillHide(_:)), name:UIKeyboardWillHideNotification, object: nil)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        //fieldParentView.frame.origin.y = fieldInitialY + fieldOffset
        buttonParentView.frame.origin.y = buttonInitialY + buttonOffset
        loginScrollView.contentOffset.y = loginScrollView.contentInset.bottom

    }
    
    func keyboardWillHide(notification: NSNotification!) {
        //fieldParentView.frame.origin.y = fieldInitialY
        buttonParentView.frame.origin.y = buttonInitialY
    }

    @IBAction func didPressLogin(sender: AnyObject) {
        
        if emailField.text!.isEmpty || passwordField.text!.isEmpty {
            self.loginIndicator.stopAnimating()
            
            // instantiate error alert controller
            let alertController = UIAlertController(
                title: "Email Required",
                message: "Please enter your email address",
                preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                // do nothing
            }
            alertController.addAction(cancelAction)
            self.presentViewController(alertController, animated: true) {
                // nothing
            }
        } else {
            loginIndicator.startAnimating()
            
            if emailField.text == "wikichen@fb.com" && passwordField.text == "password" {
                delay(2, closure: { () -> () in
                    self.loginIndicator.stopAnimating()
                    self.loginButton.selected = false
                    self.performSegueWithIdentifier("tutorialSegue", sender: nil)
                })
            } else {
                delay(2, closure: { () -> () in
                    self.loginIndicator.stopAnimating()
                    // instantiate error alert controller
                    let alertController = UIAlertController(title: "Invalid Email or Password", message: "Please enter a valid email or password", preferredStyle: .Alert)
                    let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                        // do nothing
                    }
                    alertController.addAction(cancelAction)
                    self.presentViewController(alertController, animated: true) {
                        // nothing
                    }
                })
            }
        }
        
    }
}
