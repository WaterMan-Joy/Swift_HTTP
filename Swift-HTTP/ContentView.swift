//
//  ContentView.swift
//  Swift-HTTP
//
//  Created by 김종희 on 2023/08/18.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            Group {
                TestView()
                    .tabItem({
                        Image(systemName: "house.circle")
                        Text("Tests")
                    })
                PhotoView()
                    .tabItem({
                        Image(systemName: "photo.on.rectangle.angled")
                        Text("Photos")
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
