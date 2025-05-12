//
//  ContentView.swift
//  Alas etno
//
//  Created by Temirlan Satybaldy on 09.05.2025.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("isLoggedIn") private var isLoggedIn = false
    @StateObject private var wishList = WishListViewModel()

    var body: some View {
        Group {
            if isLoggedIn {
                MainTabView()
                    .environmentObject(wishList)
            } else {
                LoginView()
            }
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}


#Preview {
    ContentView()
}
