//
//  ProductDetailView.swift
//  Alas etno
//
//  Created by Temirlan Satybaldy on 09.05.2025.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    @EnvironmentObject var wishList: WishListViewModel
    @State private var selectedSize = ""
    @State private var isAdded = false

    private let customGreen = Color(red: 72 / 255, green: 99 / 255, blue: 81 / 255)

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(product.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 300)
                    .clipped()
                    .cornerRadius(12)

                Text(product.name)
                    .font(.title2)

                Text("\(product.price, specifier: "%.2f") ₸")
                    .font(.headline)

                HStack {
                    ForEach(product.sizes, id: \.self) { size in
                        Button(size) {
                            selectedSize = size
                            isAdded = false
                        }
                        .padding(8)
                        .background(selectedSize == size ? customGreen : Color.gray.opacity(0.2))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    }
                }

                Text("Description")
                    .font(.headline)

                Text(product.description)
                    .font(.body)

                HStack {
                    Button(action: {
                        if !selectedSize.isEmpty {
                            wishList.addToWishList(product)
                            isAdded = true
                        }
                    }) {
                        Text(isAdded ? "Added ✔️" : "Add to Wish List")
                            .frame(maxWidth: .infinity)
                    }
                    .padding()
                    .background(selectedSize.isEmpty ? Color.gray.opacity(0.4) : (isAdded ? customGreen.opacity(0.6) : customGreen))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .disabled(selectedSize.isEmpty)
                }
            }
            .padding()
        }
    }
}
