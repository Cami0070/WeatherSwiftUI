//
//  WeatherDayView.swift
//  WeatherSwiftUI
//
//  Created by Camelia Braghes on 12.01.2022.
//

import SwiftUI

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium, design: .serif))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35)
            
            Text("\(temperature)°")
                .font(.system(size :20, weight: .medium, design: .serif))
                .foregroundColor(.white )
        }
    }
}
