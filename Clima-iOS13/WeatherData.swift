//
//  WeatherData.swift
//  Clima
//
//  Created by Eugene Lo on 3/24/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

// typealiases are combined protocols - Codable is a typealias for Encodable and Decodable
struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}
