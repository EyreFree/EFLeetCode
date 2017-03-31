//
//  2. Add Two Numbers.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/19.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution2AddTwoNumbers {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let rtnList = ListNode(0)
        var nowList1 = l1
        var nowList2 = l2
        var nowRtnList = rtnList
        var nowRtnListLast = nowRtnList
        while nil != nowList1 || nil != nowList2 {
            if let try1 = nowList1 {
                nowRtnList.val += try1.val
                nowList1 = try1.next
            }
            if let try2 = nowList2 {
                nowRtnList.val += try2.val
                nowList2 = try2.next
            }
            let nextNode = ListNode(nowRtnList.val / 10)
            nowRtnList.val = nowRtnList.val % 10
            nowRtnList.next = nextNode
            nowRtnListLast = nowRtnList
            nowRtnList = nextNode
        }
        if nowRtnList.val == 0 {
            nowRtnListLast.next = nil
        }
        return rtnList
    }
}
