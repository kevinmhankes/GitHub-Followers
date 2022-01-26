//
//  Date+Ext.swift
//  Github
//
//  Created by Kevin Hankes on 1/20/22.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}
