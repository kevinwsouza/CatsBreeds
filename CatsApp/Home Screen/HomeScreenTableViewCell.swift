//
//  HomeScreenView.swift
//  CatsApp
//
//  Created by Kevin Souza on 24/10/22.
//

import Foundation
import UIKit


class HomeScreenTableViewCell: UIView {
    
    private var viewCell: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var labelCatBreed: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Arial", size: 20)
        label.textColor = .black
        label.textAlignment = .center
        label.text = "TESTE"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private let imageViewTrailing: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "chevron")
        image.tintColor = .black
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    
    //MARK: - setup constraints
    
    
    func setup() {
        setupBinds()
        setupContrains()
    }
    
    private func setupContrains() {
        NSLayoutConstraint.activate([
            
            viewCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            viewCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            viewCell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            viewCell.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            
            labelCatBreed.centerYAnchor.constraint(equalTo: viewCell.centerYAnchor),
            labelCatBreed.centerXAnchor.constraint(equalTo: viewCell.centerXAnchor),
            
            imageViewTrailing.bottomAnchor.constraint(equalTo: viewCell.bottomAnchor, constant: -45),
            imageViewTrailing.trailingAnchor.constraint(equalTo: viewCell.trailingAnchor, constant: -20),
        ])
    }
    
    
    private func setupBinds() {
        addSubview(viewCell)
        
        viewCell.addSubview(labelCatBreed)
        viewCell.addSubview(imageViewTrailing)
    }
    
    
}
