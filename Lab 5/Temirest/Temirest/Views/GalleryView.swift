//
//  GalleryView.swift
//  Temirest
//
//  Created by Temirlan Satybaldy on 03.04.2025.
//
// Это основной экран с сеткой изображений

import SwiftUI

struct GalleryView: View {
    @ObservedObject var viewModel = ImageViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    viewModel.fetchImages()     // загружает новые фотки
                }) {
                    Text("Загрузить изображения")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()

                if viewModel.isLoading {
                    ProgressView("Загрузка...")
                        .progressViewStyle(CircularProgressViewStyle())
                        .padding()
                }

                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                        ForEach(viewModel.images) { image in
                            AsyncImage(url: URL(string: image.download_url)) { phase in
                                switch phase {
                                case .empty:
                                    ProgressView()  // индикатор загрузки
                                case .success(let image):
                                    image.resizable()
                                         .scaledToFill()
                                         .frame(width: 150, height: 150)
                                         .clipped()
                                case .failure:
                                    Text("Ошибка загрузки")
                                @unknown default:
                                    Text("Неизвестная ошибка")
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Temirest")
                        .font(.title)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                }
            }
            
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}


// ВСЕ ЗАМЕТКИ ДЛЯ СЕБЯ
