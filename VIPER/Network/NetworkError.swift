//
//  NetworkError.swift
//  VIPER
//
//  Created by Semih Emre ÜNLÜ on 10.10.2021.
//

import Foundation

enum NetworkError: Error {
    case decoding
    case wrongUrlType
    case error(Error?)
}
