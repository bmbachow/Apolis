//
//  ViewController.swift
//  iOSAcadConcurrency
//
//  Created by Brian Bachow on 2/16/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
    func callBackgroundWork() {
        DispatchQueue.global(qos: .background).async {
            // do stuff here
        }
    }
    
    func getData() {
        
        guard let url = URL(string: "") else {return}
        let task = URLSession.shared.dataTask(with: url, completionHandler: { [weak self] data, response, error in
            guard data != nil else {return}
            
            DispatchQueue.main.async {
                self?.view.backgroundColor = .red
            }
            
        })
        
        task.resume()
    }


}

