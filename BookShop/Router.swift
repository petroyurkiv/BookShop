//
//  Router.swift
//  BookShop
//
//  Created by Petro on 06.07.2023.
//

import UIKit

final class Router {
    
    private weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func showHomeScreenAsRootController() {
        navigationController?.setViewControllers([HomeScreenComposer.build(router: self)], animated: true)
    }
    
    func showBooksScreen() {
        navigationController?.pushViewController(BooksViewController(), animated: true)
    }
}
