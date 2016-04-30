//
//  100. Same Tree.swift
//  leetcode-swift-cpp
//
//  Created by EyreFree on 16/4/30.
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
class Solution100SameTree {
    func isSameTree(p: TreeNode?, _ q: TreeNode?) -> Bool {
        return isSame(p, q: q)
    }

    func isSame(p: TreeNode?, q: TreeNode?) -> Bool {
        if let realP = p, let realQ = q {
            return (realP.val == realQ.val)
                && isSame(realP.left, q: realQ.left)
                && isSame(realP.right, q: realQ.right)
        } else if nil == p && nil == q {
            return true
        }
        return false
    }
}