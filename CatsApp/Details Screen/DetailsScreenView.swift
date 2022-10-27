//
//  DetailsScreenView.swift
//  CatsApp
//
//  Created by Kevin Souza on 26/10/22.
//

import Foundation
import UIKit

class DetailsScreenView: UIView {
    
    var imagecat: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var labelCatBreed: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "teste"
        label.tintColor = .black
        return label
    }()
    var labeldescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var labeltemperament: UILabel = {
        let label = UILabel()
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
            
            imagecat.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor, constant: 20),
            imagecat.centerXAnchor.constraint(equalTo: centerXAnchor),
            imagecat.heightAnchor.constraint(equalToConstant: 150),
            imagecat.widthAnchor.constraint(equalToConstant: 150),
            
            labelCatBreed.centerYAnchor.constraint(equalTo: centerYAnchor),
            //labelCatBreed.topAnchor.constraint(equalTo: imagecat.bottomAnchor, constant: 20),
            labelCatBreed.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            labeldescription.topAnchor.constraint(equalTo: labelCatBreed.bottomAnchor, constant: 20),
            labeldescription.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            labeltemperament.topAnchor.constraint(equalTo: labeldescription.bottomAnchor, constant: 20),
            labeltemperament.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
    
    
    private func setupBinds() {
        
        addSubview(imagecat)
        addSubview(labelCatBreed)
        addSubview(labeldescription)
        addSubview(labeltemperament)
        
    }
    
    
    
    
    
    
    
    
}
