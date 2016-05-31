//
//  LandingViewController.swift
//  OnboardingDemo
//
//  Created by Alexander Ge on 5/31/16.
//  Copyright © 2016 Alexander Ge. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func loginButtonTapped(sender: UIButton)
    {
        
        let lvc = LoginViewController(nibName: "LoginViewController", bundle: nil)
        
        self.navigationController?.pushViewController(lvc, animated: true)
        
        print("go to login screen")
    }
    
    
    @IBAction func registerButtonTapped(sender: UIButton)
    {
        
        let rvc = RegisterViewController(nibName: "RegisterViewController", bundle: nil)
        
        self.navigationController?.pushViewController(rvc, animated: true)
        
        print("go to register screen")
        
    }
    
}
