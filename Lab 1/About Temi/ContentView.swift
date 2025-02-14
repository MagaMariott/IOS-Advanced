//
//  ContentView.swift
//  About Temi
//
//  Created by Temirlan Satybaldy on 06.02.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: ContentView()) {
                        Text("<-")
                    }
                    .padding(30)
                    .foregroundStyle(.red)
                    .bold()
                Image(systemName: "person.crop.circle")
                    .foregroundStyle(.yellow)
                Text(" Temirlan")
                    .bold()
                    .foregroundStyle(.white)
                NavigationLink(destination: ContentView2()) {
                        Text("->")
                    }
                    .padding(30)
                    .foregroundStyle(.yellow)
                    .bold()
            }
                .font(.title)
                .frame(width: 410, height: 70)
                .background(Color.red)
                    
            Image("PhotoMe")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .cornerRadius(20)
                .padding()
            
            HStack(alignment: .center, spacing: 30)  {
                Text("I am 19 years old and a second-year student at KBTU from Almaty. Now I'm honorary mentor and member of several student organizations. In my freshman year I was the vice president of the SITE")
            }
                .frame(width: 370)
        }
        Spacer()
    }
}
#Preview {
    ContentView()
}
