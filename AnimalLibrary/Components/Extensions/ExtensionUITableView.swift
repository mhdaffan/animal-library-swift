//
//  ExtensionUITableView.swift
//  AnimalLibrary
//
//  Created by Muhammad Affan on 22/01/24.
//

import UIKit

extension UITableView {
    
    func getEstimationHeight() -> CGFloat {
        var height: CGFloat = 0
        for section in 0..<numberOfSections {
            height += rectForHeader(inSection: section).size.height
            height += rectForFooter(inSection: section).size.height
            for row in 0..<numberOfRows(inSection: section) {
                let indexPath = IndexPath(row: row, section: section)
                height += rectForRow(at: indexPath).size.height
            }
        }
        
        return height
    }
    
    func getEstimationHeight(maxRow: Int) -> CGFloat {
        var height: CGFloat = 0
        for section in 0..<numberOfSections {
            height += rectForHeader(inSection: section).size.height
            height += rectForFooter(inSection: section).size.height
            let maxRow = numberOfRows(inSection: section) < maxRow ? numberOfRows(inSection: section) : maxRow
            for row in 0..<maxRow {
                let indexPath = IndexPath(row: row, section: section)
                height += rectForRow(at: indexPath).size.height
            }
        }
        
        return height
    }
    
    func reloadData(_ completion: @escaping () -> Void) {
        UIView.animate(withDuration: 0, animations: {
            self.reloadData()
        }, completion: { _ in
            completion()
        })
    }
    
}
