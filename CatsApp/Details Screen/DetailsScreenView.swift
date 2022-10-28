//
//  DetailsScreenView.swift
//  CatsApp
//
//  Created by Kevin Souza on 26/10/22.
//

import Foundation
import UIKit

class DetailsScreenView: UIView {
    
    var labelTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "MORE INFO"
        return label
    }()
    
    var imagecat: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var labeltemperament: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 12)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    //MARK: - setup constraints
    
    
    func setup() {
        setupBinds()
        setupContrains()
    }
    
    private func setupContrains() {
        NSLayoutConstraint.activate([
            
            labelTitle.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 20),
            labelTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            imagecat.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 20),
            imagecat.centerXAnchor.constraint(equalTo: centerXAnchor),
            imagecat.heightAnchor.constraint(equalToConstant: 250),
            imagecat.widthAnchor.constraint(equalToConstant: 300),
            
            labeltemperament.topAnchor.constraint(equalTo: imagecat.bottomAnchor, constant: 20),
            labeltemperament.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor, constant: 20),
            labeltemperament.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor, constant: -20),
        ])
    }
    
    
    private func setupBinds() {
        
        addSubview(labelTitle)
        addSubview(imagecat)
        addSubview(labeltemperament)
        
    }
}
