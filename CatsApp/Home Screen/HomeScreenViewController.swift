//
//  HomeScreenViewController.swift
//  CatsApp
//
//  Created by Kevin Souza on 24/10/22.
//

import Foundation
import UIKit

class HomeScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var viewModel: HomeScreenViewModel
    
    //MARK:  - init
    
    init(viewModel: HomeScreenViewModel){
        self.viewModel = viewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK:  - TableView
    
    private var homeTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .gray
        tableView.showsVerticalScrollIndicator = false
        return tableView
    }()
    
    //MARK: - TableView config
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? HomeScreenTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(breed: viewModel.cats[indexPath.row].name ?? "")
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.cats.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.didSelect(row: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    
    func homeTableViewConfig() {
        homeTableView.delegate = self
        homeTableView.dataSource = self
        homeTableView.register(HomeScreenTableViewCell.self, forCellReuseIdentifier: "cell")
        homeTableView.backgroundColor = .white
        homeTableView.separatorColor = .none
        homeTableView.tableFooterView = UIView()
    }
    
    
    //MARK: - life cycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        homeTableViewConfig()
        setup()
        viewModel.getCats(onComplete: { success in
            DispatchQueue.main.async { [weak self] in
                if success {
                    self?.homeTableView.reloadData()
                } else {
                    
                }
            }
        })
        navigationBar()
    }
    
    func navigationBar() {
        self.navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.tintColor = .black
        navigationItem.title = "Cats Breeds"
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black,
                              NSAttributedString.Key.font: UIFont(name: "Helvetica Oblique", size: 21)
        ]
        navigationController?.navigationBar.titleTextAttributes = textAttributes as [NSAttributedString.Key : Any]
    }
    
}

//MARK: - View Codable

extension HomeScreenViewController: ViewCodable {
    func constraintsSetup() {
        view.addSubview(homeTableView)
        
        homeTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            homeTableView.topAnchor.constraint(equalTo: view.topAnchor),
            homeTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            homeTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            homeTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
    }

    func viewSetup() {

    }
}



