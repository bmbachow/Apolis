//
//  ViewModel.swift
//  brunoHelp
//
//  Created by Brian Bachow on 2/13/22.
//

import Foundation

class ViewModel {
    
    var networkModel = NetworkModel.shared
    var arr = [Todo]()
    var err : Error?
    typealias setupUI = (()->())?
    func manipulateData(setupUI : setupUI, urlString: String){
        networkModel.getData(manipulateData: { [weak self] data, response, error in
            self?.err = error
            if data != nil {
                do {
                    guard let data = data else {return}
                    let receivedData = try JSONDecoder.init().decode([Todo].self, from: data)
                    self?.arr = receivedData
                } catch {
                    self?.err = error
                }
            }
            setupUI?()
        }, url: urlString)
    }
    
    func todoCount() -> Int {
        return arr.count
    }
    
    func todoTitle(row : Int) -> String {
        guard let title = arr[row].title else {return ""}
        return title
    }
    
}
