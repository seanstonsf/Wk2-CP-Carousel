//
//  SignInViewController.swift
//  Carousel
//
//  Created by Sean Smith on 9/23/15.
//  Copyright © 2015 Sean Smith. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var loginFormContainer: UIView!
    @IBOutlet weak var signInButtonContainer: UIView!
    
    @IBOutlet weak var signInEmailField: UITextField!
    @IBOutlet weak var signInPasswordField: UITextField!

    var initialY: CGFloat!
    let offset:CGFloat = -120
    
    var initialYSignIn: CGFloat!
    let offsetSignInButton:CGFloat = -240
    
    let emptyAlertController = UIAlertController(title: "Email Required", message: "Please enter your email address.", preferredStyle: .Alert)
    
    let incorrectAlertController = UIAlertController(title: "Sign In Failed", message: "Incorrect email or password.", preferredStyle: .Alert)
    
    let signinginAlertController = UIAlertController(title: "Signing in…", message: nil, preferredStyle: .Alert)
    
    let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in  }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initialY = loginFormContainer.frame.origin.y
        initialYSignIn = signInButtonContainer.frame.origin.y
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    
        incorrectAlertController.addAction(self.OKAction)
        emptyAlertController.addAction(self.OKAction)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!){
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        _ = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        let durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        let animationDuration = durationValue.doubleValue
        let curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        let animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            self.loginFormContainer.frame.origin = CGPoint(x: self.loginFormContainer.frame.origin.x, y: self.initialY + self.offset)

            self.signInButtonContainer.frame.origin = CGPoint(x: self.signInButtonContainer.frame.origin.x, y: self.initialYSignIn + self.offsetSignInButton)

            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
    }
    
    
    func keyboardWillHide(notification: NSNotification!){
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        _ = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        let durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        let animationDuration = durationValue.doubleValue
        let curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        let animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            self.loginFormContainer.frame.origin = CGPoint(x: self.loginFormContainer.frame.origin.x, y: self.initialY)
            
            self.signInButtonContainer.frame.origin = CGPoint(x: self.signInButtonContainer.frame.origin.x, y: self.initialYSignIn)
            
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
    }

    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    @IBAction func SignInBackButton(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func didPressSignInButton(sender: AnyObject) {
        view.endEditing(true)

        
        if signInEmailField.text == "" && signInPasswordField.text == "" {
//            print("Empty")
            presentViewController(emptyAlertController, animated: true) {}

        } else {
            presentViewController(self.signinginAlertController, animated: true, completion: nil)
            delay(2) {
                if self.signInPasswordField.text != "hi" && self.signInPasswordField.text != "password"{
//                    print("Incorrect")
                    self.dismissViewControllerAnimated(true, completion: nil)
                    self.presentViewController(self.incorrectAlertController, animated: true, completion: nil)
                } else {
//                    print("Success!")
                    self.dismissViewControllerAnimated(true, completion: nil)
                    self.performSegueWithIdentifier("loginSegue", sender: nil)
                }
            }
        }
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    
}