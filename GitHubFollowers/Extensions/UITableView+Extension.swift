//
//  UITableView+Extension.swift
//  GitHubFollowers
//
//  Created by Fatih Kilit on 4.08.2022.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
