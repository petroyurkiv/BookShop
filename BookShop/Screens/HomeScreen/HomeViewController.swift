//
//  ViewController.swift
//  BookShop
//
//  Created by Petro on 06.07.2023.
//

import UIKit

final class HomeViewController: UIViewController {
    
    private var router: Router
    private var viewModel: HomeViewModelProtocol
    private var categories: [CellModel] = []
    private let tableView = UITableView(frame: .zero)
    
    init(viewModel: HomeViewModelProtocol, router: Router) {
        self.router = router
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        view.backgroundColor = .blue
        viewModel.onListUpdate = { [weak self] categories in
            self?.categories = categories
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        configureTableVeiw()
        viewModel.onLoad()
    }
    
    private func configureTableVeiw() {
        view.addSubview(tableView)
        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: HomeTableViewCell.identifier)
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

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categories.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        router.showBooksScreen()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as! HomeTableViewCell
        let category = categories[indexPath.row]
        cell.setupModel(category)
        return cell
    }
}
