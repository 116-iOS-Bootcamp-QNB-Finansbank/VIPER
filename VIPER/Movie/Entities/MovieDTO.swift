//
//  MovieDTO.swift
//  MVC
//
//  Created by Semih Emre ÜNLÜ on 2.10.2021.
//

import Foundation

// MARK: - MovieDTO
struct MovieDTO: Codable {
    let feed: Feed
}

// MARK: - Feed
struct Feed: Codable {
    let title: String
    let id: String
    let author: Author
    let links: [Link]
    let copyright, country: String
    let icon: String
    let updated: String
    let results: [Result]
}

// MARK: - Author
struct Author: Codable {
    let name: String
    let uri: String
}

// MARK: - Link
struct Link: Codable {
    let linkSelf: String?
    let alternate: String?

    enum CodingKeys: String, CodingKey {
        case linkSelf = "self"
        case alternate
    }
}

// MARK: - Result
struct Result: Codable {
    let artistName, id, releaseDate, name: String
    let kind: Kind
    let copyright: String?
    let artworkUrl100: String
    let genres: [Genre]
    let url: String
    let contentAdvisoryRating: ContentAdvisoryRating?
    let artistID: String?
    let artistURL: String?

    enum CodingKeys: String, CodingKey {
        case artistName, id, releaseDate, name, kind, copyright, artworkUrl100, genres, url, contentAdvisoryRating
        case artistID = "artistId"
        case artistURL = "artistUrl"
    }
}

enum ContentAdvisoryRating: String, Codable {
    case explicit = "Explicit"
}

// MARK: - Genre
struct Genre: Codable {
    let genreID, name: String
    let url: String

    enum CodingKeys: String, CodingKey {
        case genreID = "genreId"
        case name, url
    }
}

enum Kind: String, Codable {
    case movie = "movie"
    case movieBundle = "movieBundle"
}

