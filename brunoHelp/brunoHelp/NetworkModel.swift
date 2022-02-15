//
//  Network.swift
//  brunoHelp
//
//  Created by Brian Bachow on 2/13/22.
//

import Foundation

class NetworkModel {
    static let shared = NetworkModel.init()
    private init() {}
    typealias passToViewModel = ((Data?, URLResponse?, Error?) -> ())?
    func getData(manipulateData: passToViewModel, url: String){
        guard let todoURL = URL(string: url) else {return}
        URLSession.shared.dataTask(with: todoURL) { data, response, error in
            manipulateData?(data, response, error)
        }.resume()
    }
    
}
