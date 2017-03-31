//
//  217. Contains Duplicate.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/17.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution217ContainsDuplicate {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var sortedNums = Array(nums)
        sortedNums.sort(by: {$0 > $1})
        for i: Int in 0 ..< sortedNums.count - 1 += 1 {
            if sortedNums[i] == sortedNums[i + 1] {
                return true
            }
        }
        return false
    }
}
