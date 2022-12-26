//
//  APIManager.swift
//  myWeather
//
//  Created by Aviv Reuven on 25/10/2022.
//

import Foundation


struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let id: Int
    let description: String
}
