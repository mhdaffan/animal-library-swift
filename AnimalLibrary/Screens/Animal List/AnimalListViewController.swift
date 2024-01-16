//
//  AnimalListViewController.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit
import SnapKit

final class AnimalListViewController: ViewController {
    
    // MARK: - UI Properties
    
    private(set) lazy var searchController = UISearchController().then {
        $0.searchBar.placeholder = "Search"
    }
    private(set) lazy var tableView = UITableView().then {
        $0.backgroundColor = .white
        $0.separatorStyle = .none
        $0.register(cell: AnimalListItemCell.self)
        $0.delegate = self
        $0.dataSource = self
    }
    
    let viewModel: AnimalListViewModel
    
    // MARK: - Initialized
    
    init(viewModel: AnimalListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Overidden Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Internal Methods
    
    private func configureUI() {
        navigationItem.searchController = searchController
        view.addSubviews(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension AnimalListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, cell: AnimalListItemCell.self)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

// MARK: - Static Methods

extension AnimalListViewController {
    
    static func build() -> AnimalListViewController {
        let viewModel = AnimalListViewModel()
        return AnimalListViewController(viewModel: viewModel)
    }
    
}
