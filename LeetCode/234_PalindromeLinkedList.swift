//
//  234_PalindromeLinkedList.swift
//  
//
//  Created by Viktor Olesenko on 02.09.22.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var values: Array<Int> = []
        
        var current: ListNode? = head
        while current != nil {
            values.append(current!.val)
            current = current?.next
        }
        
        let countHalf = Int(values.count / 2)
        
        for i in 0 ..< countHalf {
            if values[i] != values[values.count - 1 - i] {
                return false
            }
        }
        
        return true
    }
}
