//
//  1337_TheKWeakestRowsInAMatrix.swift
//  
//
//  Created by Viktor Olesenko on 06.09.22.
//

import Foundation

func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
    return mat
        .enumerated()
        .map({ [$0, $1.count(of: 1)] })
        .sorted(by: { $0[1] < $1[1] })
        .prefix(k)
        .map({ $0[0] })
}

extension Array where Element == Int {
    
    func count(of value: Element) -> Int {
        return self.filter({ $0 == value }).count
    }
}
