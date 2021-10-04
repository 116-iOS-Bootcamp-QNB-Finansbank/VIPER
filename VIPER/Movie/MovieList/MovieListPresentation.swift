//
//  MovieListPresentation.swift
//  MVC
//
//  Created by Semih Emre ÜNLÜ on 2.10.2021.
//

import Foundation

struct MovieListPresentation {
    let title: String
    
    init(title: String) {
        self.title = title
    }
    
    init(movie: Result) {
        self.init(title: movie.name)
    }
}
