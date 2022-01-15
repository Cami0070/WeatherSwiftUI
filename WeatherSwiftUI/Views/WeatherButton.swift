//
//  WeatherButton.swift
//  WeatherSwiftUI
//
//  Created by Camelia Braghes on 12.01.2022.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View{
        Text(title)
            .frame(width: 250, height: 40)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(20)
    
    }
}

