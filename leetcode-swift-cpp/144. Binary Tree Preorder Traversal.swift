//
//  144. Binary Tree Preorder Traversal.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/17.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

//Definition for a binary tree node.
open class TreeNode {
    open var val: Int
    open var left: TreeNode?
    open var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution144BinaryTreePreorderTraversal {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        return action(root)
    }

    func action(_ root: TreeNode?) -> [Int] {
        var rtn = Array<Int>()
        if let node = root {
            rtn += [node.val]
            rtn += action(node.left)
            rtn += action(node.right)
        }
        return rtn
    }
}
