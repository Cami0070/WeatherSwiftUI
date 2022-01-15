//
//  ContentView.swift
//  WeatherSwiftUI
//
//  Created by Camelia Braghes on 21.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            
            BackgroundView(isNight: $isNight)
            
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" :
                                        "cloud.sun.fill" ,
                                      temperature: isNight ? 19 : 33)
                
                HStack(spacing: 18) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: isNight ? "moon.stars.fill" : "sun.max.fill",
                                   temperature: isNight ? 24 : 31)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: isNight ? "cloud.moon.fill" : "cloud.sun.fill",
                                   temperature: isNight ? 18 :26)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: isNight ? "smoke.fill" : "cloud.sun.bolt.fill",
                                   temperature: isNight ? 19 :20)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: isNight ? "cloud.moon.rain.fill" : "tornado",
                                   temperature: isNight ? 17 :24)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: isNight ? "thermometer" : "thermometer.sun.fill",
                                   temperature: isNight ? 31 :41)
                    
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: Color("Blue"),
                                  backgroundColor: .red)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
