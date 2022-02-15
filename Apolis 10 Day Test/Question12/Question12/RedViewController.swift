//
//  ViewController.swift
//  Question12
//
//  Created by Brian Bachow on 2/1/22.
//

import UIKit

class RedViewController: UIViewController {

    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func present(_ sender: Any) {
        let st = UIStoryboard(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "BlueViewController")
        present(vc, animated: true, completion: nil)
    }
    
    
    @IBAction func push(_ sender: Any) {
        
        let st = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = st.instantiateViewController(withIdentifier: "GreenViewController") as? GreenViewController else {return}
        navigationController?.pushViewController(vc, animated: true)
    }
    

}

