//
//  Model.swift
//  SwiftIUAssignment3
//
//  Created by Brian Bachow on 3/10/22.
//

import Foundation

struct MovieResults : Decodable {
    let results : [Movie]?
}

struct Movie : Decodable, Identifiable {
    let id: Int
    let title: String?
//    let genres: [MovieGenre]?
//    var genreText : String {
//        genres?.first?.name ?? "n/a"
//    }
}

struct MovieGenre : Decodable {
    let name: String?
}
