//
//  LoggedInViewController.swift
//  Onboarding
//
//  Created by Ryan Davey on 5/31/16.
//  Copyright © 2016 Ryan Davey. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {
    
    // Label for welcome greeting
    @IBOutlet weak var greetingLabel: UILabel!
    
     let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    @IBAction func logoutButtonTapped(sender: UIButton) {
        let lvc = LandingViewController(nibName: "LandingViewController",bundle:nil)
        self.navigationController?.pushViewController(lvc,animated:true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.text = "Welcome " + UserController.sharedInstance.logged_in_user!.email

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
