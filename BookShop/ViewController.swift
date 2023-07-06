//
//  ViewController.swift
//  BookShop
//
//  Created by Petro on 06.07.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        CategoriesManager.fetchData { result in
            print(result)
        }
    }

}

