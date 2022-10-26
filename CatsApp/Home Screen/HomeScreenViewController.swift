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
    
    private var HomeTableView: UITableView = {
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
        cell.setup()
        guard let cats = viewModel.cats[indexPath.row] else { return cell }
        cell.createCells(with: cats)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.cats.first?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.didSelect(row: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        130
    }
    
    func HomeTableViewConfig() {
        HomeTableView.delegate = self
        HomeTableView.dataSource = self
        HomeTableView.register(HomeScreenTableViewCell.self, forCellReuseIdentifier: "cell")
        HomeTableView.backgroundColor = .white
        HomeTableView.separatorColor = .none
        HomeTableView.tableFooterView = UIView()
    }
    
    
    //MARK: - life cycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HomeTableViewConfig()
        setup()
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
        
    }
    
    func viewSetup() {
        
    }
}



