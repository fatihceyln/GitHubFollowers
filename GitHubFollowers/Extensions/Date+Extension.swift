//
//  Date+Extension.swift
//  GitHubFollowers
//
//  Created by Fatih Kilit on 3.08.2022.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
