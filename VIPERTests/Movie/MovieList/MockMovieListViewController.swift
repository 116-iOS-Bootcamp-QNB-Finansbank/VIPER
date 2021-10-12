//
//  MockMovieListViewController.swift
//  VIPERTests
//
//  Created by Semih Emre ÜNLÜ on 10.10.2021.
//

import Foundation
@testable import VIPER

class MockMovieListViewController: NSObject, MovieListViewProtocol {
    var presenter: MovieListPresenterProtocol!
    var outputs: [MovieListPresenterOutput] = []
    
    func viewDidLoad() {
        presenter.viewDidLoad()
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        presenter.didSelectRow(at: indexPath)
    }
    
    func handleOutput(_ output: MovieListPresenterOutput) {
        self.outputs.append(output)
    }
}
