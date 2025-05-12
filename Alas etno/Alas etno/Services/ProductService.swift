//
//  ProductService.swift
//  Alas etno
//
//  Created by Temirlan Satybaldy on 10.05.2025.
//

import Foundation

class ProductService {
    static func loadProducts() -> [Product] {
        guard let url = Bundle.main.url(forResource: "products", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let products = try? JSONDecoder().decode([Product].self, from: data) else {
            return []
        }
        return products
    }
}
