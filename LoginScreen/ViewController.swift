//
//  ViewController.swift
//  LoginScreen
//
//  Created by Thomas Dexter on 2019-02-04.
//  Copyright © 2019 Thomas Dexter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // instantiate fields/labels
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /**
     * Handle the 'Log In' click event
     */
    @IBAction func onLoginClick(_ sender: Any) {
        // get field values
        let username = usernameField.text ?? ""
        let password = passwordField.text ?? ""
        
        // check login info with LoginManager
        let loginManager = LoginManager(username: username, password: password)
        
        // check login info
        if (loginManager.login()) {
            errorLabel.isHidden = true
        } else {
            errorLabel.isHidden = false
        }
    }
}

