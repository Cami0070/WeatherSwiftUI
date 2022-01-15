//
//  CityTextView.swift
//  WeatherSwiftUI
//
//  Created by Camelia Braghes on 12.01.2022.
//

import SwiftUI

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text( cityName )
            .font(.system(size: 32, weight: .medium, design: .serif))
            .foregroundColor(.white)
            .padding()
        
    }
}
