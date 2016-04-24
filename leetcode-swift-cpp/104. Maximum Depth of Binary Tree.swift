//
//  104. Maximum Depth of Binary Tree.swift
//  leetcode-swift-cpp
//
//  Created by EyreFree on 16/4/24.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution104MaximumDepthofBinaryTree {
    func maxDepth(root: TreeNode?) -> Int {
        return getMaxDeepValue(root, value: 1)
    }

    func getMaxDeepValue(root: TreeNode?, value: Int = 0) -> Int {
        if let rootRel = root {
            var valLeft = value, valueRight = value
            if let leftTree = rootRel.left {
                valLeft = getMaxDeepValue(leftTree, value: value + 1)
            }
            if let rightTree = rootRel.right {
                valueRight = getMaxDeepValue(rightTree, value: value + 1)
            }
            return max(valLeft, valueRight)
        }
        return 0
    }
}