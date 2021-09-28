//
//  WeatherManager.swift
//  Clima
//
//  Created by Jedediah Hernandez on 9/28/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?appid=bf191a1bdaa17c74a4cae747513f16f6&units=imperial"
    
    func getCityName(cityName: String) {
        let completeURL = "\(weatherURL)&q=\(cityName)"
        print(completeURL)
    }
}
