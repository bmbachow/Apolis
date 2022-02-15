//
//  ViewController.swift
//  brunoHelp
//
//  Created by Brian Bachow on 2/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tblView: UITableView!
    

    let vm = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        vm.manipulateData(setupUI: {
            DispatchQueue.main.async {
                self.tblView.reloadData()
            }
        }, urlString: "https://jsonplaceholder.typicode.com/todos")
        
        
    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.todoCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tblView.dequeueReusableCell(withIdentifier: "cell") else { return UITableViewCell() }
        
        cell.textLabel?.text = vm.todoTitle(row: indexPath.row)
        
        return cell
                
                
    }
    
    
}

