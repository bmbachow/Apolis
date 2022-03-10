//
//  User.swift
//  SwiftIUAssignment3
//
//  Created by Brian Bachow on 3/8/22.
//

import Foundation

struct User: Identifiable, Hashable {
    let id = UUID()
    let name : String
    let age : Int
    let hobby : String?
    let career : String?
}
