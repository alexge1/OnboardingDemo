//
//  LoggedInViewController.swift
//  OnboardingDemo
//
//  Created by Alexander Ge on 5/31/16.
//  Copyright © 2016 Alexander Ge. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {

    
    @IBOutlet weak var greetingLabel: UILabel!
    


    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let currentUser = UserController.sharedInstance.logged_in_user!
        greetingLabel.text = "Welcome \(currentUser.email)!"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func logOutButtonTapped(sender: UIButton)
    {
        
        UserController.sharedInstance.logoutUser()
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.navigateToLoggedOutNavigationController()
        

    }

    
    
    
}


















