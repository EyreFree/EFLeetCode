//
//  141. Linked List Cycle.cpp
//  leetcode-swift-cpp
//
//  Created by MBP on 16/5/16.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

#include <stdio.h>

//Definition for singly-linked list.
struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x), next(NULL) {}
};

class Solution141LinkedListCycle {
public:
    bool hasCycle(ListNode *head) {
        struct ListNode *fast = head, *slow = head;
        while (slow && fast && fast->next) {
            fast = fast->next->next;
            slow = slow->next;
            if (fast == slow) {
                return true;
            }
        }
        return false;
    }
};