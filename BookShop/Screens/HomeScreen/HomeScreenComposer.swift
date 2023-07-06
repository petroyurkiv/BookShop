//
//  HomeScreenConposer.swift
//  BookShop
//
//  Created by Petro on 06.07.2023.
//

import UIKit

enum HomeScreenComposer {
    static func build(router: Router) -> UIViewController {
        return HomeViewController(viewModel: HomeViewModel(), router: router)
    }
}
