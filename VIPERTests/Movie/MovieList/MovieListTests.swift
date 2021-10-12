//
//  MovieListTests.swift
//  VIPERTests
//
//  Created by Semih Emre ÜNLÜ on 10.10.2021.
//

import XCTest
@testable import VIPER

class MovieListTests: XCTestCase {

    var view: MockMovieListViewController!
    var interactor: MovieListInteractor!
    var router: MockMovieListRouter!
    var presenter: MovieListPresenter!
    var service: MockClientNetworkService!
    var loader: ResourceLoader!
    
    override func setUpWithError() throws {
        loader = ResourceLoader()
        service = MockClientNetworkService(movieDTO: loader.loadMovieDTO(jsonName: "movie"))
        view = MockMovieListViewController()
        interactor = MovieListInteractor(service: service)
        router = MockMovieListRouter()
        presenter = MovieListPresenter(interactor: interactor, view: view, router: router)
        view.presenter = presenter
        interactor.delegate = presenter
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        view = nil
        interactor = nil
        router = nil
        presenter = nil
        service = nil
        loader = nil
    }
    
    func testMovieList_whenDidLoadView_expectesOutputsCome() {
        //Arrange
        //Act
        view.viewDidLoad()
        //Assert
        XCTAssertEqual(view.outputs.count, 1)
    }

    func testMovieList_whenDidSelectFirstRow_selectedMovieNameShouldBeFreeGuy() throws {
        //Arrange
        let indexPath = IndexPath(row: 0, section: 0)
        //Act
        view.viewDidLoad()
        view.didSelectRow(at: indexPath)
        let result = service.movieDTO?.feed.results.first
        //Assert
        XCTAssertEqual(result?.name, "Free Guy", "First indexed movie name should be Free Guy")
    }
}
