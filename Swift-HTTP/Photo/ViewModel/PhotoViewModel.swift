//
//  PhotoViewModel.swift
//  Swift-HTTP
//
//  Created by 김종희 on 2023/08/18.
//

import Foundation

class PhotoViewModel: ObservableObject {
    @Published var photos: [Photo] = [Photo]()
    
    init() {
        print("DEBUG: INIT PHOTO VIEW MODEL")
        fetchPhotos()
    }
    
    func fetchPhotos() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/photos") else {return}
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("DEBUG: ERROR: \(error)")
            }
            
            guard let data = data else {return}
            
            do {
                let photos = try JSONDecoder().decode([Photo].self, from: data)
                let countPhotos = photos.filter({$0.id < 5})
                print(countPhotos)
                DispatchQueue.main.async {
                    self.photos = countPhotos
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
