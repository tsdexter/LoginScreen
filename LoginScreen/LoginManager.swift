//
//  LoginManager.swift
//  LoginScreen
//
//  Created by Thomas Dexter on 2019-02-04.
//  Copyright © 2019 Thomas Dexter. All rights reserved.
//

import Foundation

class LoginManager {
    
    // keep track of credentials
    var username: String
    var password: String
    
    // initialize
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    // check login and return result
    func login() -> Bool {
        if(username == "test" && password == "test") {
            return true
        } else {
            return false
        }
    }
}
