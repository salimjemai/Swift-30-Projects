//
//  WeatherData.swift
//  WeatherApp
//
//  Created by Salim Jemai on 12/9/23.
//

import Foundation

struct WeatherData: Codable {
    let list: [WeatherInfo]
}

struct WeatherInfo: Codable {
    let dt: TimeInterval
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let main: String
    let description: String
    let icon: String
}

