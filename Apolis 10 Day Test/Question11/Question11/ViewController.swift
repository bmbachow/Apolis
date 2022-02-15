//
//  ViewController.swift
//  Question11
//
//  Created by Brian Bachow on 2/1/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var height: NSLayoutConstraint!
    
    @IBOutlet weak var width: NSLayoutConstraint!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func click(_ sender: Any) {
        if height.constant == 100 {
            height.constant += 50
            width.constant += 50
        } else {
            height.constant -= 50
            width.constant -= 50
        }
    }

}

