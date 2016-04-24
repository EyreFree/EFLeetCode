//
//  226. Invert Binary Tree.swift
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
class Solution226InvertBinaryTree {
    func invertTree(root: TreeNode?) -> TreeNode? {
        return action(root)
    }

    func action(root: TreeNode?) -> TreeNode? {
        if let rootTree = root {
            let leftTree = rootTree.left
            let rightTree = rootTree.right
            rootTree.left = rightTree
            rootTree.right = leftTree
            action(rootTree.left)
            action(rootTree.right)
        }
        return root
    }
}