//
//  83. Remove Duplicates from Sorted List.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/8.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution83RemoveDuplicatesfromSortedList {
    func deleteDuplicates(head: ListNode?) -> ListNode? {
        if nil != head {
            var tryNode = head
            while nil != tryNode?.next {
                let trytryNode = tryNode!.next
                if trytryNode?.val == tryNode?.val {
                    deleteNode(tryNode!)
                    tryNode = head
                } else {
                    tryNode = trytryNode
                }
            }
        }
        return head
    }

    func deleteNode(node: ListNode) {
        let tempNode = node.next
        node.val = tempNode!.val
        node.next = tempNode!.next
    }
}