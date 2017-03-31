//
//  268. Missing Number.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/17.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution268MissingNumber {
    func missingNumber(_ nums: [Int]) -> Int {
        let len = nums.count
        var sum = 0
        for i: Int in 0 ..< len += 1 {
            sum += nums[i] - i
        }
        return len - sum
    }
}
