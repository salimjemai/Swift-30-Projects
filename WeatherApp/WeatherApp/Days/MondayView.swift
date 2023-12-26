//
//  MondayView.swift
//  WeatherApp
//
//  Created by Salim Jemai on 11/23/23.
//

import SwiftUI

struct MondayView: View {
    var body: some View {
        VStack{
            Text("TUE")
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width:40, height: 40)
            Text("76°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    MondayView()
}
