//
//  BannerView.swift
//  SocialFeedApp
//
//  Created by Temirlan Satybaldy on 06.03.2025.
//
import SwiftUI

struct BannerView: View {
    let imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 150)
            .cornerRadius(10)
            .padding(.vertical, 10)
    }
}
