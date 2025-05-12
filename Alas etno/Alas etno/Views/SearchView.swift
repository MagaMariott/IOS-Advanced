//
//  SearchView.swift
//  Alas etno
//
//  Created by Temirlan Satybaldy on 09.05.2025.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @StateObject private var viewModel = ProductViewModel()

    var filteredProducts: [Product] {
        if searchText.isEmpty {
            return []
        } else {
            return viewModel.products.filter {
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                TextField("Search products", text: $searchText)
                    .textFieldStyle(.roundedBorder)
                    .padding()

                ScrollView {
                    LazyVStack {
                        ForEach(filteredProducts) { product in
                            NavigationLink(destination: ProductDetailView(product: product)) {
                                Text(product.name)
                                    .padding()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Search")
            .onAppear {
                viewModel.loadProducts()
            }
        }
    }
}
