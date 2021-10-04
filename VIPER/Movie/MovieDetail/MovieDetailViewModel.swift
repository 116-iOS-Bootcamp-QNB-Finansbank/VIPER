//
//  MovieDetailViewModel.swift
//  MVVM
//
//  Created by Semih Emre ÜNLÜ on 3.10.2021.
//

import Foundation

class MovieDetailViewModel: MovieDetailViewModelProtocol {
    weak var delegate: MovieDetailViewModelDelegate?
    
    private let movie: Result
    
    init(movie: Result) {
        self.movie = movie
    }
    
    func viewDidLoad() {
        delegate?.showMovieDetail(MovieDetailPresentation(movie: movie))
    }
}
