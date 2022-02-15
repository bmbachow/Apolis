//
//  ViewController.swift
//  backandforthbutton
//
//  Created by Brian Bachow on 1/21/22.
//

import UIKit



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToNext(_ sender: Any) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: "SecondViewController")
        
        navigationController?.pushViewController(vc, animated: true)    }
    
}

