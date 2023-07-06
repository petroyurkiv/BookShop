//
//  Model.swift
//  BookShop
//
//  Created by Petro on 06.07.2023.
//

import Foundation

struct Categories: Decodable {
    let status: String
    let results: [Category]
}
