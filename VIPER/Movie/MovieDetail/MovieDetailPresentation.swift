//
//  MovieDetailPresentation.swift
//  MVC
//
//  Created by Semih Emre ÜNLÜ on 3.10.2021.
//

import Foundation

struct MovieDetailPresentation {
    let name: String
    let releaseDate: String
    let genre: String
    
    init(name: String, releaseDate: String, genre: String) {
        self.name = name
        self.releaseDate = releaseDate
        self.genre = genre
    }
    
    init(movie: Result) {
        self.init(name: movie.name,
                  releaseDate: movie.releaseDate,
                  genre: movie.genres.first?.name ?? "")
    }
}
