//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Salim Jemai on 12/7/23.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 220, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(15)
    }
}


struct DarkModeLabelView: View {
    @Binding var isNight: Bool
    var darkModeText: String
    var body: some View {
        Text(darkModeText)
            .foregroundColor(isNight ? Color.white : Color.black)
    }
}

#Preview {
    WeatherButton(title: "Weather Button", textColor: .white, backgroundColor: .blue)
}
