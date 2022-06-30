//
//  SFWeather.swift
//
//
//  Created by Daniel Choroszucha on 30/06/2022.
//

import Foundation

struct SFWeather: SFCategoryProtocol {
    static var symbols: [String] = {
        ["sun.min",
         "sun.min.fill",
         "sun.max",
         "sun.max.fill",
         "sun.max.circle",
         "sun.max.circle.fill",
         "sunrise",
         "sunrise.fill",
         "sunset",
         "sunset.fill",
         "sun.and.horizon",
         "sun.and.horizon.fill",
         "sun.dust",
         "sun.dust.fill",
         "sun.haze",
         "sun.haze.fill",
         "moon",
         "moon.fill",
         "moon.circle",
         "moon.circle.fill",
         "sparkles",
         "moon.stars",
         "moon.stars.fill",
         "cloud",
         "cloud.fill",
         "cloud.drizzle",
         "cloud.drizzle.fill",
         "cloud.rain",
         "cloud.rain.fill",
         "cloud.heavyrain",
         "cloud.heavyrain.fill",
         "cloud.fog",
         "cloud.fog.fill",
         "cloud.hail",
         "cloud.hail.fill",
         "cloud.snow",
         "cloud.snow.fill",
         "cloud.sleet",
         "cloud.sleet.fill",
         "cloud.bolt",
         "cloud.bolt.fill",
         "cloud.bolt.rain",
         "cloud.bolt.rain.fill",
         "cloud.sun",
         "cloud.sun.fill",
         "cloud.sun.rain",
         "cloud.sun.rain.fill",
         "cloud.sun.bolt",
         "cloud.sun.bolt.fill",
         "cloud.moon",
         "cloud.moon.fill",
         "cloud.moon.rain",
         "cloud.moon.rain.fill",
         "cloud.moon.bolt",
         "cloud.moon.bolt.fill",
         "smoke",
         "smoke.fill",
         "wind",
         "wind.snow",
         "snowflake",
         "snowflake.circle",
         "snowflake.circle.fill",
         "tornado",
         "tropicalstorm",
         "hurricane",
         "thermometer.sun",
         "thermometer.sun.fill",
         "thermometer.snowflake",
         "thermometer",
         "aqi.low",
         "aqi.medium",
         "aqi.high",
         "humidity",
         "humidity.fill"]
    }()
}