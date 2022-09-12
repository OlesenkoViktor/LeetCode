//
//  1672_RichestCustomerWealth.swift
//  
//
//  Created by Viktor Olesenko on 09.09.22.
//

import Foundation

func maximumWealth(_ accounts: [[Int]]) -> Int {
    return accounts
        .map({ $0.reduce(0, +) })
        .max()!
}
