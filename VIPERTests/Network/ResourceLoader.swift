//
//  ResourceLoader.swift
//  VIPERTests
//
//  Created by Semih Emre ÜNLÜ on 10.10.2021.
//

import Foundation
@testable import VIPER

class ResourceLoader {
    func loadMovieDTO(jsonName: String) -> MovieDTO? {
        guard let url = Bundle(for: DummyClass.self).url(forResource: jsonName, withExtension: "json") else { return nil }
        guard let data = try? Data(contentsOf: url) else { return nil }
        guard let movieDTO = try? JSONDecoder().decode(MovieDTO.self, from: data) else { return nil }
        return movieDTO
    }
}

class DummyClass { }
