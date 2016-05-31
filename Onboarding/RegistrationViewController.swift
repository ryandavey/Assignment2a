//
//  RegistrationViewController.swift
//  Onboarding
//
//  Created by Ryan Davey on 5/31/16.
//  Copyright © 2016 Ryan Davey. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    // Text fields
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Register"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Action for Register button
    @IBAction func registerButtonTapped(sender: UIButton) {
        let email = emailField.text
        let password = passwordField.text
        
        let (failure_message, user) = UserController.sharedInstance.registerUser(email!,newPassword:password!)
        if user != nil {
            let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.navigateToLoggedInNavigationController()
            print("User registered view registration view")
        }
        else if failure_message != nil {
            print(failure_message)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
