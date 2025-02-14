//
//  ContentView3.swift
//  About Temi
//
//  Created by Temirlan Satybaldy on 14.02.2025.
//

import SwiftUI

struct ContentView3: View {
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: ContentView2()) {
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
                NavigationLink(destination: ContentView()) {
                        Text("->")
                    }
                    .padding(30)
                    .foregroundStyle(.yellow)
                    .bold()
            }
                .font(.title)
                .frame(width: 410, height: 70)
                .background(Color.red)
            
            VStack {
                Text("My dream profession was Formula 1 driver. But now Im gonna become full stack developer")
            }
        }
        Spacer()
    }
}
#Preview {
    ContentView3()
}
