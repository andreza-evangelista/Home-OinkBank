//
//  ViewController.swift
//  Home
//
//  Created by user217584 on 25/07/22.
//

import Foundation
import UIKit

class NewHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    //MARK: - tableView
    
    let tableView = UITableView(frame: .zero, style: .grouped)
    
    private func setupTableView(){
        
        self.view.addSubview(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        tableView.showsVerticalScrollIndicator = false
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(CollectionTableViewCell.self, forCellReuseIdentifier: CollectionTableViewCell.identifier)
        
        tableView.reloadData()
    }

    private let viewModels: [CollectionTableViewCellViewModel] = [
        CollectionTableViewCellViewModel(
            viewModels: [
                ViewCollectionViewCellViewModel(name: "View 1", backgroundColor: .MyTheme.backgroundColor),
                ViewCollectionViewCellViewModel(name: "View 2", backgroundColor: .MyTheme.backgroundColor),
                ViewCollectionViewCellViewModel(name: "View 3", backgroundColor: .MyTheme.backgroundColor),
            ]
        )
    ]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewModel = viewModels[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as? CollectionTableViewCell else {
            fatalError()
        }
        cell.configure(with: viewModel)

        return cell
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.width/1.9
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    //MARK: - viewWillAppear
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }

    //MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .MyTheme.grayColor
        setupTableView()
        self.navigationItem.setHidesBackButton(true, animated: true)
    }
}

//MARK: - Extension NewHomeViewController

extension NewHomeViewController {
    
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = NewHomeHeaderCollectionReusableView()
        return header
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return NewHomeHeaderCollectionReusableView.height
    }

    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = NewHomeFooterCollectionReusableView()
        return footer
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return NewHomeFooterCollectionReusableView.height
    }
}


