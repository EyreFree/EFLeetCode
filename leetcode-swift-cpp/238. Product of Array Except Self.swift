//
//  238. Product of Array Except Self.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/17.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution238ProductofArrayExceptSelf {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        return commonFxxk(nums)
    }

    func commonFxxk(_ nums: [Int]) -> [Int] {
        let len = Int(nums.count)
        var rtn = [Int](repeating: 1, count: len)

        var leftValue = [Int](repeating: 1, count: len)
        leftValue[1] = nums[0]
        for i: Int in 2 ..< len += 1 {
            leftValue[i] = leftValue[i - 1] * nums[i - 1]
        }

        var rightValue = [Int](repeating: 1, count: len)
        rightValue[len - 2] = nums[len - 1]
        for var i: Int = len - 3; i >= 0; i -= 1 {
            rightValue[i] = rightValue[i + 1] * nums[i + 1]
        }

        for i: Int in 0 ..< len += 1 {
            rtn[i] = leftValue[i] * rightValue[i]
        }
        return rtn
    }
}
