//
//  ProductRow.swift
//  SocialFeedApp
//
//  Created by Temirlan Satybaldy on 06.03.2025.
//
import SwiftUI

struct ProductRow: View {
    let product: Product
    
    var body: some View {
        HStack {
            Image(product.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.headline)
                Text("₸\(product.price, specifier: "%.2f")")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding()
    }
}

