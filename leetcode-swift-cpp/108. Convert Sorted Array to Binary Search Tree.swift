//
//  108. Convert Sorted Array to Binary Search Tree.swift
//  leetcode-swift-cpp
//
//  Created by EyreFree on 16/4/7.
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
class Solution108ConvertSortedArraytoBinarySearchTree {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return (0 == nums.count ? nil : getTreeNode(nums, start: 0, end: nums.count - 1))
    }

    func getTreeNode(_ nums: [Int], start: Int, end: Int) -> TreeNode?{
        if start > end {
            return nil
        }
        let middle = start + (end - start) / 2
        let newNode = TreeNode(nums[middle])
        newNode.left = getTreeNode(nums, start: start, end: middle - 1)
        newNode.right = getTreeNode(nums, start: middle + 1, end: end)
        return newNode
    }
}
