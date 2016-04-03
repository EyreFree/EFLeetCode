//
//  328. Odd Even Linked List.swift
//  leetcode-swift-cpp
//
//  Created by EyreFree on 16/4/3.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution328OddEvenLinkedList {
    func oddEvenList(head: ListNode?) -> ListNode? {
        if nil == head || nil == head?.next {
            return head
        }
        var odd = head
        var even = head!.next
        let evenHead = even
        while nil != odd?.next && nil != even?.next {
            odd!.next = even!.next
            odd = odd!.next
            even!.next = odd?.next
            even = even?.next
        }
        odd!.next = evenHead
        return head
    }
}