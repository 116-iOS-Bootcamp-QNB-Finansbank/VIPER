//
//  MovieListContracts.swift
//  MVC
//
//  Created by Semih Emre ÜNLÜ on 2.10.2021.
//

import Foundation

//MARK: View
protocol MovieListViewProtocol: NSObject {
    func handleOutput(_ output: MovieListPresenterOutput)
}

//MARK: Interactor
enum MovieListInteractorOutput {
    case showMovieDetail(Result)
    case showMovieList([Result])
}

protocol MovieListInteractorDelegate: NSObject {
    func handleOutput(_ output: MovieListInteractorOutput)
}

protocol MovieListInteractorProtocol: NSObject {
    var delegate: MovieListInteractorDelegate? { get set }
    func viewDidLoad()
    func didSelectRow(at indexPath: IndexPath)
}

//MARK: Presenter
protocol MovieListPresenterProtocol: NSObject {
    func viewDidLoad()
    func didSelectRow(at indexPath: IndexPath)
}

enum MovieListPresenterOutput {
    case showMovieList([MovieListPresentation])
}

//MARK: Router
enum MovieListRoute {
    case showMovieDetail(Result)
}

protocol MovieListRouterProtocol: NSObject {
    func navigate(to route: MovieListRoute)
}

