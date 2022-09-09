//
//  1342_NumberOfStepsToReduceANumberToZero.swift
//  
//
//  Created by Viktor Olesenko on 07.09.22.
//

import Foundation

func numberOfSteps(_ num: Int) -> Int {
    var steps = 0
    var left = num
    
    while left > 0 {
        left = left % 2 == 0
            ? left / 2
            : left - 1
        steps += 1
    }
    
    return steps
}
