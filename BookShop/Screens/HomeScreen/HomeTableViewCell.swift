//
//  HomeTableViewCell.swift
//  BookShop
//
//  Created by Petro on 06.07.2023.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    static let identifier = "HomeTableViewCell"
    
    let name = UILabel()
    let date = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureName()
        configureDate()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupModel(_ cellModel: CellModel) {
        name.text = cellModel.name
        date.text = cellModel.date
    }
    
    private func configureName() {
        addSubview(name)
        name.text = "Name"
        name.font = UIFont.systemFont(ofSize: 18)
        name.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: topAnchor),
            name.leadingAnchor.constraint(equalTo: leadingAnchor),
            name.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    private func configureDate() {
        addSubview(date)
        date.text = "date"
        date.font = UIFont.systemFont(ofSize: 18)
        date.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            date.topAnchor.constraint(equalTo: topAnchor),
            date.trailingAnchor.constraint(equalTo: trailingAnchor),
            date.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

}
