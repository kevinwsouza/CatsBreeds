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
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewModel = DetailsScreenViewModel(coordinator: self)
        let viewController = DetailsScreenViewController(viewModel:  viewModel)
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func popToPrevious() {
        
        navigationController.popViewController(animated: true)
    }
}

