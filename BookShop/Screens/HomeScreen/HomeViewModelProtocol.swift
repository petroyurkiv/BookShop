//
//  HomeViewModelProtocol.swift
//  BookShop
//
//  Created by Petro on 06.07.2023.
//

import Foundation

protocol HomeViewModelProtocol {
    var onListUpdate: (([CellModel]) -> Void)? { get set }
    func onLoad()
}
