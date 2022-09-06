//
//  876_MiddleOfTheLinkedList.swift
//  
//
//  Created by Viktor Olesenko on 05.09.22.
//

import Foundation

func middleNode(_ head: ListNode?) -> ListNode? {    
    var list: Array<ListNode> = []
    
    var current: ListNode? = head
    
    while current != nil {
        list.append(current!)
        
        current = current!.next
    }
    
    let middle = Int(list.count / 2)
    
    return list[middle]
}
