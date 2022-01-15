//
//  MainWeatherStatusView.swift
//  WeatherSwiftUI
//
//  Created by Camelia Braghes on 12.01.2022.
//

import SwiftUI

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack{
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 169, height: 108, alignment: .center)
            
            Text("\(temperature)°")
                .font(.system(size :70, weight: .medium, design: .serif))
                .foregroundColor(.white )
        }
        .padding(.bottom, 60)
        
    }
}
