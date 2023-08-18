//
//  Test.swift
//  Swift-HTTP
//
//  Created by 김종희 on 2023/08/18.
//

import Foundation


struct Test: Codable, Identifiable {
    let userID: Int
    let id: Int
    let title: String
    let body: String
    
   enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
    
}


//"userId": 1,
//"id": 1,
//"title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
//"body": "quia et suscipit suscipit recusandae consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto"
