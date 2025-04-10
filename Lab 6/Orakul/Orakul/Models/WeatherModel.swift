//
//  WeatherModel.swift
//  Orakul
//
//  Created by Temirlan Satybaldy on 10.04.2025.
//

import Foundation

struct WeatherData: Decodable {
    let main: MainWeather
    let weather: [WeatherCondition]
    let wind: Wind
    let clouds: Clouds
    let dt: Int
    let sys: Sys
    let name: String
    
    struct MainWeather: Decodable {
        let temp: Double
        let feels_like: Double
        let temp_min: Double
        let temp_max: Double
        let pressure: Double
        let humidity: Int
    }
    
    struct WeatherCondition: Decodable {
        let main: String
        let description: String
        let icon: String
    }
    
    struct Wind: Decodable {
        let speed: Double
        let deg: Int
    }
    
    struct Clouds: Decodable {
        let all: Int
    }
    
    struct Sys: Decodable {
        let country: String
        let sunrise: Int
        let sunset: Int
    }
}
