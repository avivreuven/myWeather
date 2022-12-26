//
//  WeatherModel.swift
//  myWeather
//
//  Created by Aviv Reuven on 26/10/2022.
//

import Foundation


struct WeatherModel{
    let cityName: String
    let temperature: Double
    let conditionId: Int
    let conditionName: String
    
    var tempString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionSymbol: String {
        switch conditionId {
        case 200...202,230...232:
            return "cloud.bolt"
        case 210...221:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500...501,520...521:
            return "cloud.rain"
        case 502...504,522...531:
            return "cloud.heavyrain"
        case 511,600...622:
            return "cloud.snow"
        case 701...771:
            return "cloud.fog"
        case 781:
            return "tornado"
        case 800:
            return "sun.max"
        case 801:
            return "cloud.sun"
        case 802:
            return "cloud"
        case 803...804:
            return "smoke"
        default:
            return "cloud"
        }
    }
}
