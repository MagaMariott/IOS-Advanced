//
//  ContentView2.swift
//  About Temi
//
//  Created by Temirlan Satybaldy on 14.02.2025.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: ContentView()) {
                        Text("<-")
                    }
                    .padding(30)
                    .foregroundStyle(.yellow)
                    .bold()
                Image(systemName: "person.crop.circle")
                    .foregroundStyle(.yellow)
                Text(" Temirlan")
                    .bold()
                    .foregroundStyle(.white)
                NavigationLink(destination: ContentView3()) {
                        Text("->")
                    }
                    .padding(30)
                    .foregroundStyle(.yellow)
                    .bold()
            }
                .font(.title)
                .frame(width: 410, height: 70)
                .background(Color.red)
            
            List {
                Text("I love books, prefer historical and lyrical ones. My favorite is - Жестокий век by Исай Калашников about Chingiskhan and his life")
                    .padding()
                    .frame(width: 370)

                Text("Also engaged numismatics and actively replenish my collection. I have 236 coins and 56 banknotes from 54 countries")
                    .padding()
                    .frame(width: 370)
                Text("And all of this adorns my shelves with massive amount of Lego sets. I collect Lego more then 10 years and now have about 250 minifigures from +-60 sets")
                    .padding()
                    .frame(width: 370)
                Text("And I am a huge fan of motorsport and true tifosi. I watch every Formula series race, actively follow the WEC and IMSA championships, and interested in Nascar and FIA GT")
                    .padding()
                    .frame(width: 370)
            }
        }
        Spacer()
    }
}
#Preview {
    ContentView2()
}
