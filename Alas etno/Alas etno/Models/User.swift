//
//  User.swift
//  Alas etno
//
//  Created by Temirlan Satybaldy on 10.05.2025.
//

import Foundation

struct User: Codable, Identifiable {
    let id: Int
    let name: String
    let birthdate: String
    let image: String
    let email: String
    let password: String
}
