//
//  MovieListBuilder.swift
//  MVC
//
//  Created by Semih Emre ÜNLÜ on 2.10.2021.
//

import UIKit

class MovieListBuilder {
    static func build() -> MovieListViewController {
        let storyboard = UIStoryboard(name: "MovieList", bundle: nil)
        let view = storyboard.instantiateViewController(identifier: "MovieListViewController") as! MovieListViewController
        let interactor = MovieListInteractor(service: appContainer.service)
        let router = MovieListRouter(view: view)
        let presenter = MovieListPresenter(interactor: interactor, view: view, router: router)
        view.presenter = presenter
        return view
    }
}
