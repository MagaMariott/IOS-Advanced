//
//  WeatherService.swift
//  Orakul
//
//  Created by Temirlan Satybaldy on 10.04.2025.
//

import Foundation

class WeatherService {
    private let apiKey = "c45d21065b62844448765e693d97ec50"
    func getWeatherData(lat: Double, lon: Double) async throws -> WeatherData {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?lat=\(lat)&lon=\(lon)&appid=\(apiKey)&units=metric"
        guard let url = URL(string: urlString) else {
            print("Неверный URL")
            throw NSError(domain: "Invalid URL", code: 1, userInfo: nil)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoder = JSONDecoder()
        let weatherData = try decoder.decode(WeatherData.self, from: data)
        
        return weatherData
    }
}
