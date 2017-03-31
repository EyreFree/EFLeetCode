//
//  110. Balanced Binary Tree.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/5/17.
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
class Solution110BalancedBinaryTree {
    func isBalanced(_ root: TreeNode?) -> Bool {
        return checkBalance(root, height: 0).0
    }

    func checkBalance(_ root: TreeNode?, height: Int) -> (Bool, Int) {
        if let tryRoot = root {
            let leftResult = checkBalance(tryRoot.left, height: 0)
            if !leftResult.0 {
                return (false, height)
            }
            let rightResult = checkBalance(tryRoot.right, height: 0)
            if !rightResult.0 {
                return (false, height)
            }
            if abs(leftResult.1 - rightResult.1) > 1 {
                return (false, height)
            }
            return (true, max(leftResult.1, rightResult.1) + 1)
        }
        return (true, 0)
    }
}
