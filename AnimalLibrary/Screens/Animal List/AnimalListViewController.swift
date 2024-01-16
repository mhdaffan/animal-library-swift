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
    
    private(set) lazy var tableView = UITableView().then {
        $0.backgroundColor = .white
        $0.separatorStyle = .none
        $0.register(cell: AnimalListItemCell.self)
        $0.register(headerFooter: AnimalListHeaderView.self)
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
        addViewModelObservers()
        viewModel.fetchAnimalList()
    }
    
    // MARK: - Private Methods
    
    private func configureUI() {
        view.addSubviews(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func addViewModelObservers() {
        viewModel.onStateChanged = { [weak self] state in
            self?.view.loadingIndicator(isLoading: state.isLoading())
            switch state {
            case .failed(let error):
                print(error.localizedDescription)
            case .loaded:
                self?.tableView.reloadData()
            default:
                break
            }
        }
    }
    
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension AnimalListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(AnimalPicturesViewController.build(animal: viewModel.animals[indexPath.section].kinds[indexPath.row]), animated: true)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: AnimalListHeaderView.cellIdentifier) as? AnimalListHeaderView
        header?.updateUI(title: viewModel.animals[section].name)
        
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.animals.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.animals[section].kinds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, cell: AnimalListItemCell.self)
        cell.updateUI(animal: viewModel.animals[indexPath.section].kinds[indexPath.row])
        
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
