//
//  AddTwoNumber2.swift
//  Leetcode
//
//  Created by mesird on 23/05/2017.
//  Copyright © 2017 mesird. All rights reserved.
//

import Cocoa

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class AddTwoNumber2: NSObject {
    
    func lengthForList(list: ListNode) -> Int {
        var count: Int = 0
        var node = list
        while node.next != nil {
            count += 1
            node = node.next!
        }
        return count + 1
    }

    func function(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let maxCount = max(lengthForList(list: l1!), lengthForList(list: l2!))
        var retList: ListNode?
        var previousNode: ListNode?
        var needCarry: Bool = false
        
        var node1 = l1
        var node2 = l2
        var i: Int = 0
        while i < maxCount || needCarry != false {
            var result = (node1 != nil ? (node1?.val)! : 0) + (node2 != nil ? (node2?.val)! : 0) + (needCarry ? 1 : 0)
            if result >= 10 {
                result -= 10
                needCarry = true
            } else {
                needCarry = false
            }
            let node = ListNode.init(result)
            node1 = node1?.next
            node2 = node2?.next
            
            if i == 0 {
                retList = node
                previousNode = node
            } else {
                previousNode?.next = node
                previousNode = node
            }
            i += 1
        }
        return retList
    }
}
