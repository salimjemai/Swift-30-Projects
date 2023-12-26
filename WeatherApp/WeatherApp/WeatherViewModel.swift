//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by Salim Jemai on 12/9/23.
//

import Foundation
import Combine

class WeatherViewModel: ObservableObject {
    @Published var weatherData: WeatherData?

    private var cancellable: AnyCancellable?

    func fetchWeather(city: String, apiKey: String) {
//        let urlString = "https://api.openweathermap.org/data/2.5/forecast?q=\(city)&appid=\(apiKey)"
//        guard let url = URL(string: urlString) else { return }

//        cancellable = URLSession.shared.dataTaskPublisher(for: url)
//            .map(\.data)
//            .decode(type: WeatherData.self, decoder: JSONDecoder())
//            .replaceError(with: nil)
//            .receive(on: DispatchQueue.main)
//            .assign(to: \.weatherData, on: self)
    }
}
