//
//  Photos.swift
//  Swift-HTTP
//
//  Created by 김종희 on 2023/08/18.
//

import Foundation

struct Photo: Codable, Identifiable {
    let albumID, id: Int
    let title: String
    let url, thumbnailURL: String

    enum CodingKeys: String, CodingKey {
        case albumID = "albumId"
        case id, title, url
        case thumbnailURL = "thumbnailUrl"
    }
}


