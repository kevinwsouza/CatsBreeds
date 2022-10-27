//
//  DetailsScreenController.swift
//  CatsApp
//
//  Created by Kevin Souza on 26/10/22.
//

import Foundation
import UIKit


class DetailsScreenViewController: UIViewController {
    
    var viewModel: DetailsScreenViewModel
    var baseView = DetailsScreenView()
    
    
    
    //MARK:  - init
    
    init(viewModel: DetailsScreenViewModel){
        self.viewModel = viewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = baseView
        baseView.backgroundColor = .white
        baseView.setup()
    }
    
    
    
    
}
