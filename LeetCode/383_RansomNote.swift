//
//  383_RansomNote.swift
//  
//
//  Created by Viktor Olesenko on 03.09.22.
//

import Foundation

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var available = magazine
    
    for char in ransomNote {
        guard let index = available.firstIndex(of: char) else { return false }
        
        available.remove(at: index)
    }
    
    return true
}
