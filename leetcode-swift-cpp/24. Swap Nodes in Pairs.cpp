//
//  24.cpp
//  leetcode-swift-cpp
//
//  Created by EyreFree on 16/5/1.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

#include <stdio.h>

//Definition for singly-linked list.
struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x), next(NULL) {}
};

class Solution24SwapNodesinPairs {
public:
    ListNode* swapPairs(ListNode* head) {
        if (head && head->next) {
            ListNode* p1 = head->next;
            head->next = swapPairs(head->next->next);
            p1->next = head;
            head = p1;
        }
        return head;
    }
};