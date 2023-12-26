//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Salim Jemai on 12/9/23.
//

import SwiftUI

struct WeatherView: View {
    @ObservedObject var viewModel = WeatherViewModel()
    let city = "Austin,TX" // Replace with the desired city
    let apiKey = "157e96cf6a1de5e94e8d921676025403" // Replace with your OpenWeatherMap API key

    var body: some View {
        VStack {
            if let weatherData = viewModel.weatherData {
                ForEach(weatherData.list.prefix(5), id: \.dt) { weatherInfo in
                    Text("\(self.getDayOfWeek(timeInterval: weatherInfo.dt)): \(self.formatTemperature(temperature: weatherInfo.main.temp))°C - \(weatherInfo.weather.first?.description ?? "")")
                }
            } else {
                Text("Loading...")
            }
        }
        .onAppear {
            self.viewModel.fetchWeather(city: self.city, apiKey: self.apiKey)
        }
    }

    func getDayOfWeek(timeInterval: TimeInterval) -> String {
        let date = Date(timeIntervalSince1970: timeInterval)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: date)
    }

    func formatTemperature(temperature: Double) -> String {
        return String(format: "%.0f", temperature - 273.15) // Convert temperature from Kelvin to Celsius
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
