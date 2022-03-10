//
//  Utility.swift
//  SwiftIUAssignment3
//
//  Created by Brian Bachow on 3/10/22.
//

import Foundation

class Utils {
    
    static let jsonDecoder: JSONDecoder = {
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        return jsonDecoder
    }()

}
