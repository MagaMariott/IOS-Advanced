//
//  HomeView.swift
//  Alas etno
//
//  Created by Temirlan Satybaldy on 09.05.2025.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = ProductViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Products")
                        .font(.title)
                        .padding(.leading)

                    ForEach(viewModel.products) { product in
                        NavigationLink(destination: ProductDetailView(product: product)) {
                            HStack {
                                Image(product.image)
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(8)

                                VStack(alignment: .leading, spacing: 4) {
                                    Text(product.name)
                                        .font(.headline)

                                    Text("\(product.price, specifier: "%.2f") ₸")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                                .padding(.leading, 5)
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                        }
                    }
                }
            }
            .onAppear {
                viewModel.loadProducts()
            }
            .navigationTitle("Home")
        }
    }
}
