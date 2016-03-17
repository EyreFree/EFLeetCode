//
//  238. Product of Array Except Self.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/17.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution238ProductofArrayExceptSelf {
    func productExceptSelf(nums: [Int]) -> [Int] {
        return commonFxxk(nums)
    }

    func commonFxxk(nums: [Int]) -> [Int] {
        let len = Int(nums.count)
        var rtn = [Int](count: len, repeatedValue: 1)

        var leftValue = [Int](count: len, repeatedValue: 1)
        leftValue[1] = nums[0]
        for var i: Int = 2; i < len; ++i {
            leftValue[i] = leftValue[i - 1] * nums[i - 1]
        }

        var rightValue = [Int](count: len, repeatedValue: 1)
        rightValue[len - 2] = nums[len - 1]
        for var i: Int = len - 3; i >= 0; --i {
            rightValue[i] = rightValue[i + 1] * nums[i + 1]
        }

        for var i: Int = 0; i < len; ++i {
            rtn[i] = leftValue[i] * rightValue[i]
        }
        return rtn
    }
}