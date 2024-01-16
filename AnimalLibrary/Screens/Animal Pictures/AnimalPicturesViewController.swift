//
//  AnimalPicturesViewController.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit
import SnapKit

final class AnimalPicturesViewController: ViewController {
    
    // MARK: - UI Properties
    
    private(set) lazy var tableView = UITableView(frame: .zero, style: .grouped).then {
        $0.backgroundColor = .white
        $0.separatorStyle = .none
        $0.register(headerFooter: AnimalPicturesHeaderView.self)
        $0.delegate = self
        $0.dataSource = self
    }
    
    let viewModel: AnimalPicturesViewModel
    
    // MARK: - Initialized
    
    init(viewModel: AnimalPicturesViewModel) {
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
    
    // MARK: - Private Methods
    
    private func configureUI() {
        title = viewModel.animal.name
        view.addSubviews(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension AnimalPicturesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: AnimalPicturesHeaderView.cellIdentifier) as? AnimalPicturesHeaderView
        header?.updateUI(animal: viewModel.animal)
        
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

// MARK: - Static Methods

extension AnimalPicturesViewController {
    
    static func build(animal: AnimalResponse) -> AnimalPicturesViewController {
        let viewModel = AnimalPicturesViewModel(animal: animal)
        return AnimalPicturesViewController(viewModel: viewModel)
    }
    
}
