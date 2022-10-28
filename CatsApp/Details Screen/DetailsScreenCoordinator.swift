//
//  DetailsScreenCoordinator.swift
//  CatsApp
//
//  Created by Kevin Souza on 26/10/22.
//

import Foundation
import UIKit

final class DetailsScreenCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    var model: Cat
    
    init(navigationController: UINavigationController, model: Cat) {
        self.navigationController = navigationController
        self.model = model
    }
    
    func start() {
        let viewModel = DetailsScreenViewModel(coordinator: self, model: model)
        let viewController = DetailsScreenViewController(viewModel:  viewModel)
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func popToPrevious() {
        
        navigationController.popViewController(animated: true)
    }
}

