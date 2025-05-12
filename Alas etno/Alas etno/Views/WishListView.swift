//
//  WishListView.swift
//  Alas etno
//
//  Created by Temirlan Satybaldy on 09.05.2025.
//

import SwiftUI

struct WishListView: View {
    @EnvironmentObject var wishList: WishListViewModel
    private let customGreen = Color(red: 72 / 255, green: 99 / 255, blue: 81 / 255)

    var body: some View {
        VStack(alignment: .leading) {
            Text("Wish List")
                .font(.title)
                .padding()

            List {
                ForEach(wishList.items) { product in
                    HStack {
                        Image(product.image) 
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                            .cornerRadius(8)

                        VStack(alignment: .leading) {
                            Text(product.name)
                            Text("\(product.price, specifier: "%.2f") ₸")
                                .font(.subheadline)
                        }

                        Spacer()

                        Button(action: {
                            wishList.removeFromWishList(product)
                        }) {
                            Image(systemName: "trash")
                                .foregroundColor(.red)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .contentShape(Rectangle())
                }
            }

            HStack {
                Text("Total: \(wishList.totalPrice, specifier: "%.2f") ₸")
                Spacer()
                Button("Buy") {
                    // Здесь онлайн касса
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(customGreen)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding()
        }
    }
}

