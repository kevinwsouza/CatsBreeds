//
//  HomeScreenView.swift
//  CatsApp
//
//  Created by Kevin Souza on 24/10/22.
//

import Foundation
import UIKit


class HomeScreenTableViewCell: UITableViewCell {
    
    
    private var labelCatBreed: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Arial", size: 20)
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let imageViewTrailing: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "chevron-1")
        image.tintColor = .black
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK: - setup constraints
    
    
    func setup() {
        setupBinds()
        setupContrains()
    }
    
    private func setupContrains() {
        NSLayoutConstraint.activate([
            
            labelCatBreed.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            labelCatBreed.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            
            imageViewTrailing.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            imageViewTrailing.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        ])
    }
    
    
    private func setupBinds() {
        
        contentView.addSubview(labelCatBreed)
        contentView.addSubview(imageViewTrailing)
    }
    
    func configure(breed: String) {
        labelCatBreed.text = breed
    }
    
}
