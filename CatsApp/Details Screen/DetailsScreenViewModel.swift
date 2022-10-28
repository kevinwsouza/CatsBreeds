//
//  DetailsScreenViewModel.swift
//  CatsApp
//
//  Created by Kevin Souza on 26/10/22.
//

import Foundation

class DetailsScreenViewModel {
    
    let coordinator: DetailsScreenCoordinator
    let model: Cat
 
    //MARK: - init
    
    init(coordinator: DetailsScreenCoordinator, model: Cat){
        self.coordinator = coordinator
        self.model = model
    }
  
}
