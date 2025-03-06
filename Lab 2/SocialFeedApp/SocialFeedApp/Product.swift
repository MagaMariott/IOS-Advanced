//
//  Product.swift
//  SocialFeedApp
//
//  Created by Temirlan Satybaldy on 06.03.2025.
//
import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let imageName: String 
}
