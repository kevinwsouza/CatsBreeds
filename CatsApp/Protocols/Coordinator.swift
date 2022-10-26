//
//  Coordinator.swift
//  CatsApp
//
//  Created by Kevin Souza on 24/10/22.
//

import Foundation
import UIKit

protocol Coordinator {
    
    var navigationController: UINavigationController { get }
    
    func start()
    
}
