//
//  ProductViewModel.swift
//  Alas etno
//
//  Created by Temirlan Satybaldy on 09.05.2025.
//

import Foundation

class ProductViewModel: ObservableObject {
    @Published var products: [Product] = []

    func loadProducts() {
        products = ProductService.loadProducts()
    }
}
