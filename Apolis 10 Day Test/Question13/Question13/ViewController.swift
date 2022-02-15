//
//  ViewController.swift
//  Question13
//
//  Created by Brian Bachow on 2/1/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }


    @IBAction func changeBackgroundColor(_ sender: Any) {
        if view.backgroundColor != .green {
            view.backgroundColor = .green
        } else {
            view.backgroundColor = .red
        }
    }
    
    
}

