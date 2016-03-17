//
//  217. Contains Duplicate.swift
//  leetcode-swift-cpp
//
//  Created by Venpoo on 16/3/17.
//  Copyright © 2016年 eyrefree. All rights reserved.
//

import Foundation

class Solution217ContainsDuplicate {
    func containsDuplicate(nums: [Int]) -> Bool {
        var sortedNums = Array(nums)
        sortedNums.sortInPlace({$0 > $1})
        for var i: Int = 0; i < sortedNums.count - 1; ++i {
            if sortedNums[i] == sortedNums[i + 1] {
                return true
            }
        }
        return false
    }
}