//
//  Product.swift
//  Alas etno
//
//  Created by Temirlan Satybaldy on 09.05.2025.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    let sizes: [String]
}
