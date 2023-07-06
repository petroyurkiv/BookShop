//
//  BooksViewController.swift
//  BookShop
//
//  Created by Petro on 06.07.2023.
//

import UIKit

final class BooksViewController: UIViewController {
    
    private let tableView = UITableView(frame: .zero)
    
    override func viewDidLoad() {
        configureTableVeiw()
    }
    
    private func configureTableVeiw() {
        view.addSubview(tableView)
        tableView.register(BooksTableViewCell.self, forCellReuseIdentifier: BooksTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension BooksViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BooksTableViewCell.identifier, for: indexPath) as! BooksTableViewCell
        
        return cell
    }
}
