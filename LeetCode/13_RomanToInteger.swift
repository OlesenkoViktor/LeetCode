//
//  13_RomanToInteger.swift
//  LeetCode
//  https://leetcode.com/problems/roman-to-integer/
//
//  Created by Viktor Olesenko on 02.09.22.
//

class Solution {
    
    enum Roman: Int {
        case I = 1
        case V = 5
        case X = 10
        case L = 50
        case C = 100
        case D = 500
        case M = 1000
        
        init?(_ char: Character) {
            switch char {
            case "I": self = .I
            case "V": self = .V
            case "X": self = .X
            case "L": self = .L
            case "C": self = .C
            case "D": self = .D
            case "M": self = .M
            default: return nil
            }
        }
    }
    
    func romanToInt(_ s: String) -> Int {
        var result: Int = 0

        var buffer = 0
        for char in s {
            guard let number = Roman.init(char) else { return -1 }

            if number.rawValue > buffer {
                buffer = number.rawValue - buffer
            } else {
                result += buffer
                buffer = number.rawValue
            }
        }

        result += buffer

        return result
    }
}
