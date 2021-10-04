//
//  AppContainer.swift
//  MVC
//
//  Created by Semih Emre ÜNLÜ on 2.10.2021.
//

import Foundation

let appContainer = AppContainer()

class AppContainer {
    let service = ClientNetworkService()
    let router = AppRouter()
}
