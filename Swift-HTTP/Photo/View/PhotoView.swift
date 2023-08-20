//
//  PhotoView.swift
//  Swift-HTTP
//
//  Created by 김종희 on 2023/08/18.
//

import SwiftUI

struct PhotoView: View {
    
    @StateObject var viewModel = PhotoViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                Button(action: {
                    viewModel.fetchPhotos()
                }, label: {
                    Text("fetch photos")
                })
                ForEach(viewModel.photos) {photo in
                    PhotoCell(photo: photo)
                }
                
            }
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
