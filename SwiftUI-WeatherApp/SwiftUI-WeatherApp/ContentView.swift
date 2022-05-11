//
//  ContentView.swift
//  SwiftUI-WeatherApp
//
//  Created by Fellipe Ricciardi Chiarello on 4/15/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.blue)
            LinearGradient(colors: [.blue, Color("lightBlue")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Guarulhos - SP")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("23°")
                        .font(.system(size: 50, weight: .medium, design: .default))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 12) {
                    WheatherDayView(dayOfTheWeek: "TUE",
                                    imageName: "cloud.sun.fill",
                                    temperature: 22)
                    WheatherDayView(dayOfTheWeek: "WED",
                                    imageName: "wind",
                                    temperature: 18)
                    WheatherDayView(dayOfTheWeek: "THU",
                                    imageName: "cloud.bolt.rain.fill",
                                    temperature: 15)
                    WheatherDayView(dayOfTheWeek: "FRI",
                                    imageName: "sun.max.fill",
                                    temperature: 28)
                    WheatherDayView(dayOfTheWeek: "SAT",
                                    imageName: "cloud.sun.fill",
                                    temperature: 27)
                }
                Spacer()
                
                Button {
                   print("TAPPED")
                } label: {
                    Text("Change day time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .cornerRadius(10.0)
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

struct WheatherDayView: View {
    
    var dayOfTheWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfTheWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
