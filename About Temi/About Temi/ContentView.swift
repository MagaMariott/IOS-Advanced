//
//  ContentView.swift
//  About Temi
//
//  Created by Temirlan Satybaldy on 06.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle")
                .foregroundStyle(.yellow)
            Text(" Temirlan")
                .bold()
                .foregroundStyle(.white)
        }
        .font(.title)
        .frame(width: 410, height: 70)
        .background(Color.red)
        .cornerRadius(10)
        
        Image("PhotoMe")
            .resizable()
            .scaledToFit()
            .frame(width: 200)
            .cornerRadius(20)
        
        HStack {
            Text("I am second-year student at KBTU from Almaty. Now I'm honorary mentor and member of several student organizations. In my freshman year I was the vice president of the SITE")
        }
        .padding()
        
        HStack {
            Text("I love books, prefer historical and lyrical ones. Also engaged numismatics and actively replenish my collection of coins and banknotes. And all of this adorns my shelves with massive amount of Lego sets")
        }
        .padding()
        
        HStack {
            Text("And I am a huge fan of motorsport and true tifosi. I watch every Formula series race, actively follow the WEC and IMSA championships, and interested in Nascar and FIA GT")
        }
        .padding()
        
        HStack {
            Text("My dream profession was Formula 1 driver. But now Im gonna become full stack developer")
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
