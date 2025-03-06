//
//  MainView.swift
//  SocialFeedApp
//
//  Created by Temirlan Satybaldy on 06.03.2025.
//
import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("logo-alas")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                        .frame(width: 50, height: 50)
                    
                    Text("Alaş etno")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .padding()
                
                Text("Qazaqi zamanaýi sán kiimderi")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 10)
                
                ProductListView()
            }
            .navigationBarHidden(true)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

