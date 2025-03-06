//
//  ProductListView.swift
//  SocialFeedApp
//
//  Created by Temirlan Satybaldy on 06.03.2025.
//
import SwiftUI

struct ProductListView: View {
    let products: [Product] = [
        Product(name: "Semey t-sirt", price: 8000, imageName: "semey"),
        Product(name: "3=1 t-sirt", price: 10000, imageName: "1=3"),
        Product(name: "Avtomonia t-sirt", price: 15000, imageName: "no"),
        Product(name: "1917 t-sirt", price: 15000, imageName: "futbolka_1917"),
        Product(name: "1917 shorty", price: 10500, imageName: "shorty_1917"),
        Product(name: "Erekshe hoodie", price: 19500, imageName: "erekshe"),
        Product(name: "3 face zip-hoodie", price: 21000, imageName: "3 face"),
        Product(name: "Fist class hoodie", price: 20000, imageName: "rasprodaja"),
        Product(name: "Stop hoodie", price: 22000, imageName: "stop_corr"),
        Product(name: "Alaş stikers", price: 500, imageName: "stikers"),
        Product(name: "Set 1", price: 25000, imageName: "set1"),
        Product(name: "Set 2", price: 25000, imageName: "set2"),
        Product(name: "Set 3", price: 23000, imageName: "set3"),
        Product(name: "Set 1", price: 25000, imageName: "sertificat 5k"),
        Product(name: "Set 2", price: 25000, imageName: "sertificat 10k"),
        Product(name: "Set 3", price: 23000, imageName: "sertificat 20k")
    ]

    let banners: [String] = ["banner1", "banner2", "banner3"]

    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(products.indices, id: \.self) { index in
                    ProductRow(product: products[index])
                    
                    if (index + 1).isMultiple(of: 5), index < products.count - 1 {
                        let bannerIndex = (index / 5) % banners.count
                        BannerView(imageName: banners[bannerIndex])
                    }

                    Divider()
                }
            }
            .padding()
        }
    }
}



#Preview {
    ProductListView()
}
