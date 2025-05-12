//
//  WishListViewModel.swift
//  Alas etno
//
//  Created by Temirlan Satybaldy on 09.05.2025.
//

import Foundation

class WishListViewModel: ObservableObject {
    @Published var items: [Product] = []

    func addToWishList(_ product: Product) {
        if !items.contains(where: { $0.id == product.id }) {
            items.append(product)
        }
    }

    func removeFromWishList(_ product: Product) {
        items.removeAll { $0.id == product.id }
    }

    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
}
