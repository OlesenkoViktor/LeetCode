//
//  412_FizzBuzz.swift
//  
//
//  Created by Viktor Olesenko on 04.09.22.
//

import Foundation

func fizzBuzz(_ n: Int) -> [String] {
    var result: Array<String> = []
    
    for i in 1 ... n {
        if (i % 3 == 0) && (i % 5 == 0) {
            result.append("FizzBuzz")
        } else if i % 3 == 0 {
            result.append("Fizz")
        } else if i % 5 == 0 {
            result.append("Buzz")
        } else {
            result.append(String(i))
        }
    }
    
    return result
}
