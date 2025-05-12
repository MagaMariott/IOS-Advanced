//
//  LoginView.swift
//  Alas etno
//
//  Created by Temirlan Satybaldy on 09.05.2025.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @ObservedObject private var userService = UserService.shared
    @AppStorage("isLoggedIn") private var isLoggedIn = false

    var body: some View {
        VStack(spacing: 20) {
            Image("Logo")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())

            Text("Log in")
                .font(.title)

            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
                .autocapitalization(.none)

            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)

            Button("LOG IN") {
                if userService.login(email: email, password: password) {
                    isLoggedIn = true
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        .padding()
        .onAppear {
            userService.users = UserService.loadUsers()
        }
    }
}

