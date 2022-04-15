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
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
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
