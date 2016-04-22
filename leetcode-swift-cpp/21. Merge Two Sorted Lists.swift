//
//  21. Merge Two Sorted Lists.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/22.
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
class Solution21MergeTwoSortedLists {
    var listRtn: ListNode!
    var listNow: ListNode!

    func mergeTwoLists(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1Now = l1
        var l2Now = l2

        while true {
            if let tryl1 = l1Now, let tryl2 = l2Now {
                if tryl1.val < tryl2.val {
                    addList(tryl1.val)
                    l1Now = tryl1.next
                } else {
                    addList(tryl2.val)
                    l2Now = tryl2.next
                }
            } else if let tryl1 = l1Now {
                addList(tryl1.val)
                l1Now = tryl1.next
            } else if let tryl2 = l2Now {
                addList(tryl2.val)
                l2Now = tryl2.next
            } else {
                break
            }
        }

        return listRtn
    }

    func addList(val: Int) {
        if let tryList = listNow {
            tryList.next = ListNode(val)
            listNow = tryList.next
        } else {
            listNow = ListNode(val)
            listRtn = listNow
        }
    }
}