//
//  UserService.swift
//  Alas etno
//
//  Created by Temirlan Satybaldy on 10.05.2025.
//

import Foundation

class UserService: ObservableObject {
    static let shared = UserService()
    
    @Published var currentUser: User?
    @Published var users: [User] = []

    init() {
        self.users = UserService.loadUsers()
    }

    static func loadUsers() -> [User] {
        guard let url = Bundle.main.url(forResource: "users", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let users = try? JSONDecoder().decode([User].self, from: data) else {
            return []
        }
        return users
    }
    
    func login(email: String, password: String) -> Bool {
        if let user = users.first(where: { $0.email == email && $0.password == password }) {
            currentUser = user
            return true
        }
        return false
    }

    func logout() {
        currentUser = nil
    }
}

