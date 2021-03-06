//
//  UserController.swift
//  OnboardingDemo
//
//  Created by Alexander Ge on 5/31/16.
//  Copyright © 2016 Alexander Ge. All rights reserved.
//

import Foundation

//
//  UserController.swift
//  OnboardingApp
//
//  Created by Josh Broomberg on 2016/05/28.
//  Copyright © 2016 iXperience. All rights reserved.
//

import Foundation

class UserController {
    // Singleton design pattern
    class var sharedInstance: UserController {
        struct Static {
            static var instance:UserController?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token)    {
            Static.instance = UserController()
        }
        return Static.instance!
    }
    
    struct User {
        var email: String
        var password: String
    }
    
    private var users: [User] = []
    
    var logged_in_user: User?
    
    
    func registerUser(newEmail: String, newPassword: String) -> (failureMessage: String?, user: User?)
    {
        
        // check fields filled
        if (newEmail == "")
        {
            return ("No Email Given", nil)
        }
        if (newPassword == "")
        {
            return ("No password Given", nil)

        }
        for user in users {
            if user.email == newEmail {
                return ("Email taken", nil)
            }
        }
        let user = User(email: newEmail, password: newPassword)
        users.append(user)
        logged_in_user = user
        print("User with email: \(newEmail) has been registered by the UserController.")
        return (nil, user)
    }
    
    func loginUser(suppliedEmail: String, suppliedPassword: String) -> (failureMessage: String?, user: User?){
        
        // check fields filled
        if (suppliedEmail == "")
        {
            return ("No Email Given", nil)
        }
        if (suppliedPassword == "")
        {
            return ("No password Given", nil)
        }

        
        for user in users {
            if user.email == suppliedEmail {
                if user.password == suppliedPassword {
                    logged_in_user = user
                    print("loggedinuser: \(logged_in_user?.email)")
                    print("User with email: \(suppliedEmail) has been logged in by the UserController.")
                    return (nil, user)
                } else {
                    return ("Password incorrect", nil)
                }
            }
        }
        
        return ("No user with that email", nil)
    }
    
    
    func logoutUser()
    {
        
        logged_in_user = nil
    }
    
    
    
    
    
    
    
    
    
    
}