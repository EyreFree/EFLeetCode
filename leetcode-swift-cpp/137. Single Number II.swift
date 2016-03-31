//
//  137. Single Number II.swift
//  leetcode-swift-cpp
//
//  Created by MBP on 16/3/31.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution137SingleNumberII {
    func singleNumber(nums: [Int]) -> Int {
        var counterOne = 0
        var counterTwo = 0

        for num in nums {
            counterOne = (~counterTwo) & (counterOne ^ num)
            counterTwo = (~counterOne) & (counterTwo ^ num)
        }
        return counterOne
    }
}