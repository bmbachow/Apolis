//
//  Model.swift
//  brunoHelp
//
//  Created by Brian Bachow on 2/13/22.
//

import Foundation

struct Todo : Codable {
    var userId : Int?
    var id : Int?
    var title: String?
    var completed: Bool?
}
