//
//  VIPERTests.swift
//  VIPERTests
//
//  Created by Semih Emre ÜNLÜ on 10.10.2021.
//

import XCTest
@testable import VIPER

class VIPERTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let movieDTO = ResourceLoader().loadMovieDTO(jsonName: "movie")
        let clientService = MockClientNetworkService(movieDTO: movieDTO)
        
        clientService.movies { results, error in
            XCTAssertNotNil(results?.feed.title)
        }
    }
}
