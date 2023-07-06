//
//  BooksTableViewCell.swift
//  BookShop
//
//  Created by Petro on 06.07.2023.
//

import UIKit

final class BooksTableViewCell: UITableViewCell {
    
    static let identifier = "BooksTableViewCell"
    
    private let name = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureName()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
}
