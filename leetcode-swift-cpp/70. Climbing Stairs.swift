//
//  70. Climbing Stairs.swift
//  leetcode-swift-cpp
//
//  Created by EyreFree on 16/4/9.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

//超时了: Time Limit Exceeded
//class Solution70ClimbingStairs {
//    func climbStairs(n: Int) -> Int {
//        return climbAction(n)
//    }
//
//    func climbAction(n: Int) -> Int {
//        switch n {
//        case 0, 1:
//            return 1
//        case 2:
//            return 2
//        default:
//            return climbAction(n - 1) + climbAction(n - 2)
//        }
//    }
//}

class Solution70ClimbingStairs {
    func climbStairs(_ n: Int) -> Int {
        if n > 2 {
            var dp = [Int](repeating: 0, count: 3)
            dp[0] = 1
            dp[1] = 1
            for index in 2...n {
                dp[index % 3] = dp[(index - 1) % 3] + dp[(index - 2) % 3]
            }
            return dp[n % 3]
        }
        return n
    }
}
