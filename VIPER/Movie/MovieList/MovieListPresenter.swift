//
//  MovieListPresenter.swift
//  VIPER
//
//  Created by Semih Emre ÜNLÜ on 3.10.2021.
//

import Foundation

class MovieListPresenter: NSObject, MovieListPresenterProtocol {
    private unowned let view: MovieListViewProtocol
    private let router: MovieListRouterProtocol
    private var interactor: MovieListInteractorProtocol {
        didSet {
            self.interactor.delegate = self
        }
    }
    
    init(interactor: MovieListInteractorProtocol,
         view: MovieListViewProtocol,
         router: MovieListRouterProtocol) {
        self.interactor = interactor
        self.view = view
        self.router = router
    }
    
    func viewDidLoad() {
        interactor.viewDidLoad()
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        interactor.didSelectRow(at: indexPath)
    }
}

extension MovieListPresenter: MovieListInteractorDelegate {
    func handleOutput(_ output: MovieListInteractorOutput) {
        switch output {
        case .showMovieList(let movies):
            view.handleOutput(.showMovieList(movies.map(MovieListPresentation.init)))
        case .showMovieDetail(let movie):
            router.navigate(to: .showMovieDetail(movie))
        }
    }
}
