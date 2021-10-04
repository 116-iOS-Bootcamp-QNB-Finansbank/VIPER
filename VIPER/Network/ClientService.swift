//
//  ClientService.swift
//  WeatherApp
//
//  Created by Semih Emre ÜNLÜ on 26.09.2021.
//

import Foundation

protocol ClientNetworkServiceProtocol {
    func movies(completion: @escaping (MovieDTO?, Error?) -> Void)
}

class ClientNetworkService: ClientNetworkServiceProtocol {
    private let moviesURLString = "https://rss.itunes.apple.com/api/v1/us/movies/top-movies/all/25/explicit.json"
    
    private let networkService = NetworkService.instance
    
    func movies(completion: @escaping (MovieDTO?, Error?) -> Void) {
        networkService.get(from: moviesURLString, completion: completion)
    }
}
