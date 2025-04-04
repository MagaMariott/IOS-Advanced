//
//  ImageViewModel.swift
//  Temirest
//
//  Created by Temirlan Satybaldy on 03.04.2025.
//
// Для логики загрузки изображений, работы с API и управления состоянием

import Foundation
import SwiftUI

class ImageViewModel: ObservableObject {
    @Published var images: [ImageModel] = []  // массив с фотками
    @Published var isLoading = false          // чек загрузки

    private let baseURL = "https://picsum.photos/v2/list?page=1&limit=5"
    
    // функция на качку фоток
    func fetchImages() {
        isLoading = true
        guard let url = URL(string: baseURL) else {     // проверка правильности юрл
            return
        }
        
        URLSession.shared.dataTask(with: url) { [weak self] data, _, error in   // запрос на получение жанных
            if let error = error {
                print("Error fetching images: \(error)")
                DispatchQueue.main.async {      // апдейт UI после получения данных
                    self?.isLoading = false
                }
                return
            }
            
            guard let data = data else {    // проверка прихода данных
                DispatchQueue.main.async {
                    self?.isLoading = false
                }
                return
            }
            
            do {
                let decodedImages = try JSONDecoder().decode([ImageModel].self, from: data)     // получение фоток
                
                DispatchQueue.main.async {
                    self?.images.append(contentsOf: decodedImages)  // плюсует новые фотки
                    self?.isLoading = false
                }
            } catch {
                print("Error decoding data: \(error)")
                DispatchQueue.main.async {
                    self?.isLoading = false
                }
            }
        }.resume()
    }
}


// ВСЕ ЗАМЕТКИ ДЛЯ СЕБЯ
// @Published это свойство SwiftUI следить за изменениями. Если изменится images/isLoading, то интерфейс обновится
// baseURL для получения фоток. API от Picsum выдает рандомные фотки
