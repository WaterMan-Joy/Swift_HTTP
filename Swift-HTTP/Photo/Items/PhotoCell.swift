//
//  PhotoCell.swift
//  Swift-HTTP
//
//  Created by 김종희 on 2023/08/18.
//

import SwiftUI

struct PhotoCell: View {
    
    let photo: Photo
    
    var body: some View {
        VStack {
            Text(photo.title)
            AsyncImage(url: URL(string: photo.url)) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        case .failure:
                            Image(systemName: "xmark.octagon")
                                .imageScale(.large)
                                .foregroundColor(.red)
                        @unknown default:
                            fatalError()
                        }
                    }
            AsyncImage(url: URL(string: photo.thumbnailURL)) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        case .failure:
                            Image(systemName: "xmark.octagon")
                                .imageScale(.large)
                                .foregroundColor(.red)
                        @unknown default:
                            fatalError()
                        }
                    }
        }
    }
}


