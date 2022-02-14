//
//  ViewController.swift
//  passwordvalidation
//
//  Created by Brian Bachow on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var validator = PasswordValidator()
    
    @IBAction func submit(_ sender: Any) {
    
        if validator.validateUserName(username: username.text){} else {
            
            let alertController = UIAlertController(title: "Username Error", message:
                    "Username Must Be At Least 6 Characters", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                self.present(alertController, animated: true, completion: nil)
        }
        
        if validator.validatePassword(password: password.text){} else {
            
            let alertController = UIAlertController(title: "Password Error", message:
                    "Password Must Be At Least 8 Characters", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                self.present(alertController, animated: true, completion: nil)
            
        }
    }



}

