//
//  FavoritesAnimalDropDownMenuView.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 22/01/24.
//

import UIKit
import SnapKit

final class FavoritesAnimalDropDownMenuView: UIView {
    
    var onCategoryChanged: ((String) -> Void)?
    
    var selectedCategory: String = "" {
        didSet {
            updateSelectedCategory()
        }
    }
    
    var categories: [String] = [] {
        didSet {
            updateUI()
        }
    }
    
    private var filteredData: [String] = []
    
    // MARK: - UI Properties
    
    private lazy var categoryButton = UIButton(configuration: .titled(alignment: .leading, padding: 8)).then {
        $0.contentHorizontalAlignment = .leading
        $0.backgroundColor = .white
        $0.setTitleColor(.black, for: .normal)
        $0.titleLabel?.font = .poppinsBold(16)
        $0.layer.borderColor = UIColor.darkGray.cgColor
        $0.layer.borderWidth = 1
        $0.layer.cornerRadius = 4
    }
    private let lineView = UIView().then {
        $0.backgroundColor = .gray
    }
    private let dropDownView = UIView().then {
        $0.isHidden = true
        $0.addCardShadow()
    }
    private lazy var tableView = UITableView().then {
        $0.backgroundColor = .white
        $0.delegate = self
        $0.dataSource = self
        $0.separatorStyle = .none
        $0.register(cell: SingleLabelCell.self)
    }
    
    // MARK: - Initialized
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureUI()
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        for subview in subviews as [UIView] {
            if !subview.isHidden
                && subview.alpha > 0
                && subview.isUserInteractionEnabled
                && subview.point(inside: convert(point, to: subview), with: event) {
                return true
            }
        }
        return false
    }
    
    // MARK: - Private Methods
    
    private func configureUI() {
        clipsToBounds = false
        backgroundColor = .white
        addSubviews(categoryButton, lineView, dropDownView)
        categoryButton.snp.makeConstraints {
            $0.edges.equalToSuperview().inset(24)
        }
        lineView.snp.makeConstraints {
            $0.bottom.leading.trailing.equalToSuperview()
            $0.height.equalTo(1)
        }
        dropDownView.snp.makeConstraints {
            $0.top.equalTo(categoryButton.snp.bottom).offset(4)
            $0.leading.trailing.equalTo(categoryButton)
        }
        dropDownView.addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.height.equalTo(0)
        }
        
        let action = UIAction { [weak self] _ in
            guard let `self` else {
                return
            }
            self.hideDropDownView(!self.dropDownView.isHidden)
        }
        categoryButton.addAction(action, for: .primaryActionTriggered)
    }
    
    private func updateUI() {
        updateSelectedCategory()
    }
    
    private func reloadTableView() {
        tableView.reloadData { [weak self] in
            guard let `self` else {
                return
            }
            let height = self.tableView.getEstimationHeight(maxRow: 4)
            self.tableView.snp.updateConstraints { make in
                make.height.equalTo(height)
            }
        }
    }
    
    private func updateSelectedCategory() {
        filteredData = categories.filter { $0 != selectedCategory}
        categoryButton.setTitle(selectedCategory, for: .normal)
        reloadTableView()
    }
    
    func hideDropDownView(_ hide: Bool) {
        dropDownView.isHidden = hide
    }
    
}

extension FavoritesAnimalDropDownMenuView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCategory = filteredData[indexPath.row]
        onCategoryChanged?(selectedCategory)
        hideDropDownView(true)
        reloadTableView()
    }
    
}

extension FavoritesAnimalDropDownMenuView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, cell: SingleLabelCell.self)
        cell.selectionStyle = .none
        cell.updateUI(text: filteredData[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
