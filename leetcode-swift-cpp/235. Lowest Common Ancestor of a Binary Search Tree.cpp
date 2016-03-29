//
//  235. Lowest Common Ancestor of a Binary Search Tree.cpp
//  leetcode-swift-cpp
//
//  Created by MBP on 16/3/29.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

#include "stdio.h"

//Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};

class Solution235LowestCommonAncestorofaBinarySearchTree {
public:
    TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q) {
        if (root == NULL) {
            return NULL;
        }
        if (p->val < root->val && q->val < root->val) {
            return lowestCommonAncestor(root->left, p, q);
        }
        else if (p->val > root->val && q->val > root->val) {
            return lowestCommonAncestor(root->right, p, q);
        } else {
            return root;
        }
    }
};