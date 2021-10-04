//
//  NetworkService.swift
//  BasicUIComponents
//
//  Created by Semih Emre ÜNLÜ on 25.09.2021.
//

import Foundation

class NetworkService {
    static let instance = NetworkService()
    
    func get<T: Codable>(from urlString: String, completion: @escaping (T?, Error?) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(nil, nil)
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                completion(nil, error)
                return
            }
            
            guard let data = data else { return }
            
            do {
                let result = try JSONDecoder().decode(T.self, from: data)
                completion(result, nil)
            } catch {
                completion(nil, error)
            }
        }.resume()
    }
}
