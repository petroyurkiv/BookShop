//
//  Category.swift
//  BookShop
//
//  Created by Petro on 06.07.2023.
//

import Foundation

struct Category: Decodable {
    let listName: String
    let displayName: String
    let listNameEncoded: String
    let oldestPublishedDate: String
    let newestPublishedDate: String
    let updated: String
    
    private enum CodingKeys: String, CodingKey {
        case listName = "list_name"
        case displayName = "display_name"
        case listNameEncoded = "list_name_encoded"
        case oldestPublishedDate = "oldest_published_date"
        case newestPublishedDate = "newest_published_date"
        case updated
    }
}
