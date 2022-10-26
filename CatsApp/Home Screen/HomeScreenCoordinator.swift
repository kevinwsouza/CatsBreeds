//
//  HomeScreenCoordinator.swift
//  CatsApp
//
//  Created by Kevin Souza on 24/10/22.
//

import Foundation
import UIKit

final class HomeScreenCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewModel = HomeScreenViewModel(coordinator: self)
        let viewController = HomeScreenViewController(viewModel: viewModel)
        
        navigationController.pushViewController(viewController, animated: true)
    }
}
