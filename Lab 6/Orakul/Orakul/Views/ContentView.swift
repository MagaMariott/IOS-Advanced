//
//  ContentView.swift
//  Orakul
//
//  Created by Temirlan Satybaldy on 10.04.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var weatherData: WeatherData?
    @State private var isLoading = true
    @State private var errorMessage: String?

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            VStack {
                if isLoading {
                    ProgressView("Загрузка...")
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .padding()
                } else if let weatherData = weatherData {
                    VStack(spacing: 20) {
                        Text(weatherData.name)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                        
                        HStack {
                            if let icon = weatherData.weather.first?.icon {
                                Image(systemName: "cloud.sun.fill")
                                    .font(.system(size: 50))
                                    .foregroundColor(.yellow)
                            }
                            Text("Текущая температура: \(String(format: "%.1f", weatherData.main.temp))°C")
                                .font(.title2)
                                .foregroundColor(.white)
                        }

                        VStack(spacing: 15) {
                            WeatherInfoCard(title: "Температура ощущается как", value: "\(String(format: "%.1f", weatherData.main.feels_like))°C")
                            WeatherInfoCard(title: "Минимальная температура", value: "\(String(format: "%.1f", weatherData.main.temp_min))°C")
                            WeatherInfoCard(title: "Максимальная температура", value: "\(String(format: "%.1f", weatherData.main.temp_max))°C")
                            WeatherInfoCard(title: "Влажность", value: "\(weatherData.main.humidity)%")
                            WeatherInfoCard(title: "Скорость ветра", value: "\(weatherData.wind.speed) м/с")
                        }
                    }
                    .padding()
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(20)
                    .shadow(radius: 10)
                } else if let errorMessage = errorMessage {
                    Text("Ошибка: \(errorMessage)")
                        .foregroundColor(.red)
                        .bold()
                        .padding()
                }
            }
        }
        .onAppear {
            Task {
                await loadWeatherData()
            }
        }
    }

    func loadWeatherData() async {
        let weatherService = WeatherService()
        let lat = 45.4642   // 43.25 45.4642 44.5333 26.0275
        let lon = 9.1900   // 76.95 9.1900 10.8667 50.5106
        // кооры на Алматы, Милан, Маранелло, Бахрейн
        do {
            let data = try await weatherService.getWeatherData(lat: lat, lon: lon)
            self.weatherData = data
            self.isLoading = false
        } catch {
            self.errorMessage = error.localizedDescription
            self.isLoading = false
        }
    }
}

struct WeatherInfoCard: View {
    let title: String
    let value: String
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
            Text(value)
                .font(.body)
                .foregroundColor(.white)
        }
        .padding()
        .background(Color.black.opacity(0.6))
        .cornerRadius(10)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#Preview {
    ContentView()
}
