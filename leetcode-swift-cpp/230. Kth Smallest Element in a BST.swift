//
//  230. Kth Smallest Element in a BST.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/5.
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
class Solution230KthSmallestElementinaBST {
    var ans = 0

    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        helper(root, k: k)
        return ans
    }

    func helper(_ root: TreeNode?, k: Int) -> Int {
        if root == nil {
            return 0
        }
        let leftCount = helper(root!.left, k: k)
        let rightCount = helper(root!.right, k: k - leftCount - 1)
        if k == leftCount + 1 {
            ans = root!.val
        }
        return leftCount + rightCount + 1
    }
}
