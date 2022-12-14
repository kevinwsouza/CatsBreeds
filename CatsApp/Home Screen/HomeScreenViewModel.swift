//
//  HomeScreenViewModel.swift
//  CatsApp
//
//  Created by Kevin Souza on 24/10/22.
//

import Foundation

class HomeScreenViewModel {
    
    let coordinator: HomeScreenCoordinator
    let worker: HomeScreenWorker
    var cats: Cats = []
    
    
    //MARK: - init
    
    init(coordinator: HomeScreenCoordinator) {
        self.coordinator = coordinator
        worker = HomeScreenWorker()
    }
    
    //MARK: - GET
    
    func getCats(onComplete: @escaping (Bool) -> Void) {
        worker.getCats { (cats) in
            if let cats = cats {
                self.cats = cats
                onComplete(true)
            } else {
                onComplete(false)
            }
        }
    }
    
    //MARK: - Details Events
    
    func didSelect(index: Int) {
        coordinator.goToDetailsScreen(model: cats[index])
    }
}
