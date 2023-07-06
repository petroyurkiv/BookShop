//
//  HomeViewModel.swift
//  BookShop
//
//  Created by Petro on 06.07.2023.
//

import Foundation

final class HomeViewModel: HomeViewModelProtocol {
    
    private var categories: [CellModel] = []
    var onListUpdate: (([CellModel]) -> Void)?

    func onLoad() {
        CategoriesManager.fetchData { [weak self] response in
            guard let self else { return }
            switch response {
            case .success(let success):
                for category in success.results {
                    self.categories.append((self.adaptDomainModelsToCellModel(model: category)))
                }
                self.onListUpdate?(self.categories)
            case .failure(let failure):
                print(failure.self)
            }
        }
    }
    
    private func adaptDomainModelsToCellModel(model: Category) -> CellModel {
        return CellModel(name: model.displayName, date: model.oldestPublishedDate)
    }
}
