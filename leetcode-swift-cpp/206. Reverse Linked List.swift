//
//  206. Reverse Linked List.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/22.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution206ReverseLinkedList {
    func reverseList(head: ListNode?) -> ListNode? {
        var resultHead: ListNode!
        var headNode = head
        if nil != headNode {
            while true {
                if let nextNode = headNode?.next {
                    headNode!.next = resultHead
                    resultHead = headNode
                    headNode = nextNode
                } else {
                    headNode!.next = resultHead
                    resultHead = headNode
                    break
                }
            }
        }
        return resultHead
    }
}