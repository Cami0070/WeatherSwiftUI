//
//  BackgroundView.swift
//  WeatherSwiftUI
//
//  Created by Camelia Braghes on 12.01.2022.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight
                                                   ? .gray : Color("Blue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
