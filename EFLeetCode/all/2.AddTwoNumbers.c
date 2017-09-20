//
//  2.AddTwoNumbers.c
//  EFLeetCode
//
//  Created by EyreFree on 2017/9/19.
//  Copyright © 2017年 eyrefree. All rights reserved.
//
//  https://leetcode.com/problems/3sum/description/
//

#include <stdio.h>
#include <stdlib.h>

/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     struct ListNode *next;
 * };
 */
struct ListNode {
    int val;
    struct ListNode *next;
};

int addVal(struct ListNode* l1, struct ListNode* l2) {
    if (NULL != l1 && NULL != l2) {
        return l1->val + l2->val;
    } else if(NULL != l1) {
        return l1->val;
    } else if(NULL != l2) {
        return l2->val;
    }
    return 0;
}

struct ListNode* addTwoNumbers(struct ListNode* l1, struct ListNode* l2) {
    struct ListNode* rtn = NULL;
    int lastRemain = 0;
    struct ListNode* p = l1, * q = l2, * node = NULL;
    while (1) {
        if (NULL == p && NULL == q && 0 == lastRemain) {
            break;
        }

        int valNow = addVal(p, q) + lastRemain;
        lastRemain = valNow / 10;

        struct ListNode* new = (struct ListNode*)malloc(sizeof(struct ListNode));
        new->val = valNow - 10 * lastRemain;
        new->next = NULL;

        if (NULL == rtn) {
            rtn = new;
        } else {
            node->next = new;
        }
        node = new;

        if (NULL != p) {
            p = p->next;
        }
        if (NULL != q) {
            q = q->next;
        }
    }
    return rtn;
}
