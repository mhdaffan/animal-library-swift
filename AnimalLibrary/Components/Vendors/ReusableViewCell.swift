//
//  ReusableViewCell.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 16/01/24.
//

import UIKit

public protocol ReusableViewCell: AnyObject {
    static var cellIdentifier: String { get }
}

public extension ReusableViewCell {
    
    static var cellIdentifier: String {
        return String(describing: self)
    }
    
}

extension UITableViewCell: ReusableViewCell {}
extension UITableViewHeaderFooterView: ReusableViewCell {}

extension UITableView {
    
    final func register<T: UITableViewCell>(cell: T.Type) where T: ReusableViewCell {
        self.register(T.self, forCellReuseIdentifier: cell.cellIdentifier)
    }
    
    final func register<T: UITableViewHeaderFooterView>(headerFooter: T.Type) where T: ReusableViewCell {
        self.register(T.self, forHeaderFooterViewReuseIdentifier: headerFooter.cellIdentifier)
    }
    
    final func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath, cell: T.Type = T.self) -> T where T: ReusableViewCell {
        guard let reusableCell = self.dequeueReusableCell(withIdentifier: cell.cellIdentifier, for: indexPath) as? T else {
            fatalError("Failed to dequeue cell with identifier \(cell.cellIdentifier) matching type \(cell.self)")
        }
        
        return reusableCell
    }
    
}
