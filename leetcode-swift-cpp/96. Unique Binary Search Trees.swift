//
//  96. Unique Binary Search Trees.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/4/1.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution96UniqueBinarySearchTrees {
    func numTrees(n: Int) -> Int {
        var dp = [Int](count: n + 1, repeatedValue: 0)
        dp[0] = 1
        dp[1] = 1
        if n >= 2 {
            for level in 2...n {
                for root in 1...level {
                    dp[level] += dp[level - root] * dp[root - 1]
                }
            }
        }
        return dp[n]
    }
}