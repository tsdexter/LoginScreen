//
//  LoginManager.swift
//  LoginScreen
//
//  Created by Thomas Dexter on 2019-02-04.
//  Copyright © 2019 Thomas Dexter. All rights reserved.
//

import Foundation

class LoginManager {
    static var attempts: Int = 3
    
    // keep track of credentials
    var username: String
    var password: String
    
    // initialize
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    // check login and return result
    func login() -> String {
        if(
            LoginManager.attempts > 0 && // not locked out
            username == "test" &&
            password == "test"
        ) {
            // reset attempts to 3
            LoginManager.attempts = 3
            
            // return successful login
            return "success"
        } else {
            // locked the app after 3 failed attempts
            if (LoginManager.attempts == 1) {
                return "locked"
            }
            
            LoginManager.attempts = LoginManager.attempts - 1
            
            // credentials error
            return "error"
        }
    }
}
