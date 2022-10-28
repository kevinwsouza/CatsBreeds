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
    
    
    //MARK: - life cicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = baseView
        navigationBar()
        baseView.backgroundColor = .white
        baseView.setup()
        setup()
    }
    
    //MARK: - Config
    
    func navigationBar() {
        self.navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.tintColor = .black
        navigationItem.title = "\(viewModel.model.name ?? "")"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "arrow"), style: .plain, target: self, action: #selector(popToPrevious))
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black,
                              NSAttributedString.Key.font: UIFont(name: "Helvetica Oblique", size: 21)
        ]
        navigationController?.navigationBar.titleTextAttributes = textAttributes as [NSAttributedString.Key : Any]
    }
    
    func setup() {
        guard let url = viewModel.model.image?.url else { return }
        baseView.imagecat.imageFromServerURL(url, placeHolder: nil)
        baseView.labeltemperament.text = viewModel.model.temperament
    }
    
}
    //MARK: - Actions
    extension DetailsScreenViewController {
        
        @objc func popToPrevious(){
            navigationController?.popViewController(animated: true)
            
        }
    }


