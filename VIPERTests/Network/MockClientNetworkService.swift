//
//  MockClientNetworkService.swift
//  VIPERTests
//
//  Created by Semih Emre ÜNLÜ on 10.10.2021.
//

@testable import VIPER

class MockClientNetworkService: ClientNetworkServiceProtocol {
    var movieDTO: MovieDTO?
    
    init(movieDTO: MovieDTO?) {
        self.movieDTO = movieDTO
    }
    
    func movies(completion: @escaping (MovieDTO?, NetworkError?) -> Void) {
        if let movie = movieDTO {
            completion(movie, nil)
        } else {
            completion(nil, NetworkError.error(nil))
        }
    }
}
