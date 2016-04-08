//
//  237.cpp
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/8.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

//Definition for singly-linked list.
struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x), next(NULL) {}
};

class Solution237DeleteNodeinaLinkedList {
public:
    void deleteNode(ListNode* node) {
        ListNode* tempNode = node->next;
        node->val = tempNode->val;
        node->next = tempNode->next;
        free(tempNode);
    }
};