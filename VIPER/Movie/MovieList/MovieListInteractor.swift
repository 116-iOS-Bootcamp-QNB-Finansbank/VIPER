//
//  MovieListInteractor.swift
//  VIPER
//
//  Created by Semih Emre ÜNLÜ on 3.10.2021.
//

import Foundation

class MovieListInteractor: NSObject, MovieListInteractorProtocol {
    weak var delegate: MovieListInteractorDelegate?
    private let service: ClientNetworkServiceProtocol
    private var movies: [Result] = []
    
    init(service: ClientNetworkServiceProtocol) {
        self.service = service
    }
    
    func viewDidLoad() {
        // send screen name event
        // logger.sendScreenName("MovieList")
        getMovies()
    }
    
    func getMovies() {
        service.movies { [weak self] response, error in
            guard let self = self else { return }
            guard let results = response?.feed.results else { return }
            self.movies = results
            self.delegate?.handleOutput(.showMovieList(results))
        }
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        let movie = movies[indexPath.row]
        self.delegate?.handleOutput(.showMovieDetail(movie))
    }
}













/*
class SigninInteractor {
    
    func validate(username: String) -> Bool {
        // characterCount
        // non-numeric
    }
    
    func validate(password: String) -> Bool {
        // characterCount
        // 1 harf buyuk
        // numeric hem de alpha
    }
    
    func signinButtonTapped(username: String, password: String) {
        guard validate(username: username),
              validate(password: password) else {
            //delegate?.handle(output: showAlert)
            return
        }
        
//        service.signin(...)
    }
}
*/
