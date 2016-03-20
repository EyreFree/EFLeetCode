//
//  94. Binary Tree Inorder Traversal.swift
//  leetcode-swift-cpp
//
//  Created by EyreFree on 16/3/20.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution94BinaryTreeInorderTraversal {
    func inorderTraversal(root: TreeNode?) -> [Int] {
        return action(root)
    }

    func action(root: TreeNode?) -> [Int] {
        var rtn = Array<Int>()
        if let node = root {
            rtn += action(node.left)
            rtn += [node.val]
            rtn += action(node.right)
        }
        return rtn
    }
}