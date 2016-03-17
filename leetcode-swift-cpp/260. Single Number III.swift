//
//  260. Single Number III.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/17.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution260SingleNumberIII {
    func singleNumber(nums: [Int]) -> [Int] {
        let n = nums.count
        var res = 0
        var a = 0, b = 0
        for var i = 0; i < n; ++i {
            res = res ^ nums[i]
        }
        let cmp = res & (res - 1) ^ res
        for var i = 0; i < n; ++i {
            if 0 != (cmp & nums[i]) {
                a = a ^ nums[i]
            } else {
                b = b ^ nums[i]
            }
        }
        return [a, b]
    }
}
