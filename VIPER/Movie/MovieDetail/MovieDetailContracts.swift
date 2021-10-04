//
//  MovieDetailContracts.swift
//  MVC
//
//  Created by Semih Emre ÜNLÜ on 3.10.2021.
//

import Foundation

protocol MovieDetailViewModelDelegate: NSObject {
    func showMovieDetail(_ movie: MovieDetailPresentation)
}

protocol MovieDetailViewModelProtocol {
    var delegate: MovieDetailViewModelDelegate? { get set }
    func viewDidLoad()
}
