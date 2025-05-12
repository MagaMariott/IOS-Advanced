//
//  ProfileView.swift
//  Alas etno
//
//  Created by Temirlan Satybaldy on 09.05.2025.
//

import SwiftUI

struct ProfileView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("isLoggedIn") private var isLoggedIn = true
    @ObservedObject private var userService = UserService.shared

    var body: some View {
        VStack(spacing: 20) {
            if let user = userService.currentUser {
                Image(user.image)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                
                Text(user.name)
                    .font(.title2)
                
                Text(user.birthdate)
            }

            Form {
                Toggle(isOn: $isDarkMode) {
                    Text("White/Dark Mode")
                }
                .padding()

                Button("Log out") {
                    isLoggedIn = false
                }
                .foregroundColor(.red)
            }
        }
        .navigationTitle("Profile")
    }
}
