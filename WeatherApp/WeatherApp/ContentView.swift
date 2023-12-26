//
//  ContentView.swift
//  WeatherApp
//
//  Created by Salim Jemai on 11/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            VStack{
                
                CityTextView(cityName: "Cedar Park, Tx")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 77)
                
                HStack(spacing: 12) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 78)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 89)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.sun.fill",
                                   temperature: 73)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.drizzle.fill",
                                   temperature: 62)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "sun.rain.fill",
                                   temperature: 73)
                    
                    WeatherDayView(dayOfWeek: "SUN",
                                   imageName: "sun.dust.fill",
                                   temperature: 76)
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } 
                label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
//                Toggle(isOn: $isNight) {
//                    DarkModeLabelView(isNight: $isNight, darkModeText: "Dark Mode")
//                }.padding()
                
                Spacer()
            }
            .onAppear{
                let button = WeatherButton(title: "Change Time",
                                           textColor: .blue,
                                           backgroundColor: .white)
                print(type(of: button.body))
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width:40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    @Binding var isNight: Bool
    var body: some View {
        LinearGradient(gradient:
                        Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
//        ContainerRelativeShape() 
//            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
//            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 34, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width:180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .
                              medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 50)
    }
}

