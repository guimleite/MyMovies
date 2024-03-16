//
//  Movie.swift
//  MyMovies
//
//  Created by user250954 on 3/16/24.
//

import Foundation

struct Movie: Codable {
    var title: String
    var categories: String
    var duration : String
    var rating: Double
    var summary: String
    var image: String
}
