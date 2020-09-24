//
//  Extension.swift
//  coronavirusTracker1
//
//  Created by Антон Добровинский on 14/7/20.
//  Copyright © 2020 Антон Добровинский. All rights reserved.
//

import Foundation

extension Int {
    
    func formatNumber() -> String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self))!
    }
}

extension Int64 {
    
    func formatNumber() -> String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self))!
    }
}
