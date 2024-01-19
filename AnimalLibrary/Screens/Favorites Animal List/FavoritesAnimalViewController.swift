//
//  FavoritesAnimalViewController.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 18/01/24.
//

import UIKit
import SnapKit

final class FavoritesAnimalViewController: ViewController {
    
    // MARK: - UI Properties
    
    private(set) lazy var tableView = UITableView().then {
        $0.sectionHeaderTopPadding = 0
        $0.backgroundColor = .white
        $0.separatorStyle = .none
        $0.register(cell: AnimalPicturesItemCell.self)
        $0.register(headerFooter: FavoritesAnimalHeaderView.self)
        $0.delegate = self
        $0.dataSource = self
    }
    
    let viewModel: FavoritesAnimalViewModel
    
    // MARK: - Initialized
    
    init(viewModel: FavoritesAnimalViewModel) {
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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.fetchAnimals()
    }
    
    // MARK: - Private Methods
    
    private func configureUI() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    private func addViewModelObservers() {
        viewModel.onStateChanged = { [weak self] state in
            self?.view.loadingIndicator(isLoading: state.isLoading())
            switch state {
            case .loaded:
                self?.tableView.reloadData()
            default:
                break
            }
        }
    }
    
    private func updateSectionData(section: Int, rows: Int, selected: Bool) {
        var indexPaths = [IndexPath]()
        for row in 0..<rows {
            indexPaths.append(IndexPath(row: row, section: section))
        }
        
        if selected {
            tableView.insertRows(at: indexPaths, with: .fade)
        } else {
            tableView.deleteRows(at: indexPaths, with: .fade)
        }
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension FavoritesAnimalViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let animal = viewModel.animals[indexPath.section]
        let vc = AnimalPicturesViewController.build(animal: animal)
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: FavoritesAnimalHeaderView.cellIdentifier) as? FavoritesAnimalHeaderView
        let animalGroup = viewModel.animals[section]
        header?.updateUI(name: animalGroup.name, type: animalGroup.type)
        
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.animals.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.animals[section].photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, cell: AnimalPicturesItemCell.self)
        let animalPhoto = viewModel.animals[indexPath.section].photos[indexPath.row]
        cell.updateUI(photo: animalPhoto)
        cell.onTapFavorite = { [weak self] selected in
            if !selected {
                self?.viewModel.removeAnimalPhotoFromLocal(animalPhoto: animalPhoto)
            }
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

// MARK: - Static Methods

extension FavoritesAnimalViewController {
    
    static func build() -> FavoritesAnimalViewController {
        let viewModel = FavoritesAnimalViewModel()
        return FavoritesAnimalViewController(viewModel: viewModel)
    }
    
}
