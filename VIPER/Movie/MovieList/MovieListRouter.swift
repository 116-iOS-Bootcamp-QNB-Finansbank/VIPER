//
//  MovieListRouter.swift
//  VIPER
//
//  Created by Semih Emre ÜNLÜ on 3.10.2021.
//

import UIKit

class MovieListRouter: NSObject, MovieListRouterProtocol {
    private unowned let view: UIViewController
    
    init(view: UIViewController) {
        self.view = view
    }
    
    func navigate(to route: MovieListRoute) {
        switch route {
        case .showMovieDetail(let movie):
            let viewController = MovieDetailBuilder.build(with: movie)
            self.view.navigationController?.pushViewController(viewController, animated: true)
        }
    }
}
